-- Supabase: treino-funcional-flavio
-- Registros privados por usuário autenticado. Não armazena e-mails ou chaves.
-- Adaptação inicial dos dados existentes será feita no navegador, após consentimento.

create table if not exists public.flavio_training_profile (
  user_id uuid primary key references auth.users(id) on delete cascade,
  current_week integer not null default 1 check (current_week between 1 and 1000),
  current_day text not null default 'seg'
    check (current_day in ('seg','ter','qua','qui','sex','sab')),
  completed_weeks integer[] not null default '{}',
  updated_at timestamptz not null default now()
);

create table if not exists public.flavio_daily_weights (
  user_id uuid not null references auth.users(id) on delete cascade,
  weighed_on date not null,
  weight_kg numeric(5,1) not null check (weight_kg between 40 and 350),
  updated_at timestamptz not null default now(),
  primary key (user_id, weighed_on)
);

create table if not exists public.flavio_exercise_progress (
  user_id uuid not null references auth.users(id) on delete cascade,
  week_number integer not null check (week_number between 1 and 1000),
  day_id text not null check (day_id in ('seg','ter','qua','qui','sex','sab')),
  exercise_index smallint not null check (exercise_index between 0 and 4),
  is_done boolean not null default false,
  updated_at timestamptz not null default now(),
  primary key (user_id, week_number, day_id, exercise_index)
);

alter table public.flavio_training_profile enable row level security;
alter table public.flavio_daily_weights enable row level security;
alter table public.flavio_exercise_progress enable row level security;

revoke all on table public.flavio_training_profile from public, anon, authenticated;
revoke all on table public.flavio_daily_weights from public, anon, authenticated;
revoke all on table public.flavio_exercise_progress from public, anon, authenticated;

grant select, insert, update, delete on public.flavio_training_profile to authenticated;
grant select, insert, update, delete on public.flavio_daily_weights to authenticated;
grant select, insert, update, delete on public.flavio_exercise_progress to authenticated;

create policy "Read own training profile" on public.flavio_training_profile
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "Insert own training profile" on public.flavio_training_profile
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Update own training profile" on public.flavio_training_profile
  for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);
create policy "Delete own training profile" on public.flavio_training_profile
  for delete to authenticated using ((select auth.uid()) = user_id);

create policy "Read own weights" on public.flavio_daily_weights
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "Insert own weights" on public.flavio_daily_weights
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Update own weights" on public.flavio_daily_weights
  for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);
create policy "Delete own weights" on public.flavio_daily_weights
  for delete to authenticated using ((select auth.uid()) = user_id);

create policy "Read own exercise progress" on public.flavio_exercise_progress
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "Insert own exercise progress" on public.flavio_exercise_progress
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Update own exercise progress" on public.flavio_exercise_progress
  for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);
create policy "Delete own exercise progress" on public.flavio_exercise_progress
  for delete to authenticated using ((select auth.uid()) = user_id);

create table if not exists public.invoices (
  id uuid primary key default gen_random_uuid(),
  invoice_number text not null unique,
  buyer_name text not null default '',
  buyer_phone text not null default '',
  buyer_address text not null default '',
  vehicle text not null default '',
  plate_number text not null default '',
  invoice_date date not null default current_date,
  paper_size text not null default 'A4',
  workshop_name text not null default 'BENGKEL HONDA',
  workshop_address text not null default '',
  workshop_phone text not null default '',
  discount numeric not null default 0,
  paid numeric not null default 0,
  payment_method text not null default 'Tunai',
  note text not null default '',
  items jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now()
);
-- For a private single-workshop deployment, enable RLS and use server-side
-- service-role credentials in API routes. This starter uses the anon key and
-- permissive policies; tighten policies before exposing it publicly.
alter table public.invoices enable row level security;
drop policy if exists "public read invoices" on public.invoices;
drop policy if exists "public insert invoices" on public.invoices;
drop policy if exists "public update invoices" on public.invoices;
drop policy if exists "public delete invoices" on public.invoices;
create policy "public read invoices" on public.invoices for select using (true);
create policy "public insert invoices" on public.invoices for insert with check (true);
create policy "public update invoices" on public.invoices for update using (true) with check (true);
create policy "public delete invoices" on public.invoices for delete using (true);

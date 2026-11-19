import { NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
export const dynamic="force-dynamic";
export async function GET(){
 if(!supabase)return NextResponse.json({error:"Supabase belum dikonfigurasi. Isi .env.local terlebih dahulu."},{status:503});
 const {data,error}=await supabase.from("invoices").select("*").order("created_at",{ascending:false});
 if(error)return NextResponse.json({error:error.message},{status:500});
 return NextResponse.json(data);
}
export async function POST(req:Request){
 if(!supabase)return NextResponse.json({error:"Supabase belum dikonfigurasi."},{status:503});
 const body=await req.json();
 const {data,error}=await supabase.from("invoices").insert(body).select().single();
 if(error)return NextResponse.json({error:error.message},{status:500});
 return NextResponse.json(data,{status:201});
}

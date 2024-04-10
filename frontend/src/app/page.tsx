"use client";
import type { Metadata } from 'next';
import { Hero } from "@/components/common";

export const metadata: Metadata = {
	title: 'Full Auth | Home',
	description: 'Full Auth home page',
};

export default function Page() {
	return (
	
			 <div>
<Hero/>
    </div>
		
	);
}

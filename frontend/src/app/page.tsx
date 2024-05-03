import type { Metadata } from 'next'
import { Hero } from '@/components/common'

export const metadata: Metadata = {
	title: 'ITEMCLUB',
	description: 'Welcome to ITEMCLUB',
}

export default function Page() {
	return (
		<>
			<Hero />
		</>
	)
}

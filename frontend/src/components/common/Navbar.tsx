'use client'

import { usePathname } from 'next/navigation'
import { useAppSelector, useAppDispatch } from '@/redux/hooks'
import { useLogoutMutation } from '@/redux/features/authApiSlice'
import { logout as setLogout } from '@/redux/features/authSlice'
import { NavLink } from '@/components/common'
import Link from 'next/link'
import {
	RiAccountCircleLine,
	RiLogoutBoxRLine,
	RiShoppingCart2Line,
} from 'react-icons/ri'

export default function Navbar() {
	const pathname = usePathname()
	const dispatch = useAppDispatch()

	const [logout] = useLogoutMutation()

	const { isAuthenticated } = useAppSelector((state) => state.auth)

	const handleLogout = () => {
		logout(undefined)
			.unwrap()
			.then(() => {
				dispatch(setLogout())
			})
	}

	const isSelected = (path: string) => pathname === path

	const authLinks = () => (
		<>
			<ul className='mr-6 flex flex-row py-2'>
				<li>
					<NavLink isSelected={isSelected('/dashboard')} href='/dashboard'>
						<RiAccountCircleLine size={37} />
					</NavLink>
				</li>
				<li>
					<NavLink isSelected={isSelected('/cart')} href='/cart'>
						<RiShoppingCart2Line size={35} className='ml-5' />
					</NavLink>
				</li>
				<li>
					<NavLink onClick={handleLogout}>
						<RiLogoutBoxRLine size={35} className='ml-5' />
					</NavLink>
				</li>
			</ul>
		</>
	)

	const guestLinks = () => (
		<>
			<NavLink isSelected={isSelected('/auth/login')} href='/auth/login'>
				<p className='text-end rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-6002'>
					Войти
				</p>
			</NavLink>
		</>
	)

	return (
		<div>
			<div className={'flex items-center justify-between py-4 px-4'}>
				<Link href={'/'} className={'font-Montserrat font-bold text-2xl mx-3'}>
					ITEM CLUB
				</Link>

				<ul
					className={
						' items-center justify-center flex xs:hidden sm:hidden md:flex-row lg:flex-row'
					}
				>
					<li className={'px-3 py-3 font-Inter hover:font-bold'}>
						<Link href={'/products'}>Каталог</Link>
					</li>
					<li className={'px-3 py-3 font-Inter hover:font-bold'}>Одежда</li>
					<li className={'px-3 py-3 font-Inter hover:font-bold'}>Обувь</li>
					<li className={'px-3 py-3 font-Inter hover:font-bold'}>
						<Link href={'/products'}>Кроссовки</Link>
					</li>
					<li className={'px-3 py-3 font-Inter hover:font-bold'}>Аксессуары</li>
				</ul>

				{isAuthenticated ? authLinks() : guestLinks()}
			</div>

			<ul
				className={
					'items-center justify-center flex xs:flex-row sm:flex-row md:hidden lg:hidden bg-[#CBCBCB] text-white'
				}
			>
				<li className={'px-2 py-3 font-Inter text-sm'}>
					<Link href={'/products'}>Каталог</Link>
				</li>
				<li className={'px-1 py-3 font-Inter text-sm'}>Одежда</li>
				<li className={'px-2 py-3 font-Inter text-sm'}>Обувь</li>
				<li className={'px-1 py-3 font-Inter text-sm'}>Аксессуары</li>
				<li className={'px-2 py-3 font-Inter text-sm'}>Кроссовки</li>
			</ul>
		</div>
	)
}

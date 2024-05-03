'use client'
import React from 'react'
import { images } from './constants'
import { motion } from 'framer-motion'

type Props = {
	activeImage: any
	clickNext: any
	clickPrev: any
}

const Description = ({ activeImage, clickNext, clickPrev }: Props) => {
	return (
		<div className='grid place-items-start w-full bg-blue-100 relative md:rounded-tr-3xl md:rounded-br-3xl'>
			{images.map((elem, idx) => (
				<div
					key={idx}
					className={`${
						idx === activeImage
							? 'block w-full h-[60vh] px-10 text-left'
							: 'hidden'
					}`}
				>
					<motion.div
						initial={{
							opacity: idx === activeImage ? 0 : 0.5,
							scale: idx === activeImage ? 0.5 : 0.3,
						}}
						animate={{
							opacity: idx === activeImage ? 1 : 0.5,
							scale: idx === activeImage ? 1 : 0.3,
						}}
						transition={{
							ease: 'linear',
							duration: 2,
							x: { duration: 1 },
						}}
						className='w-full'
					>
						<div className='py-16 text-5xl xs:text-2xl md:text-3xl font-extrabold'>
							{elem.title}
						</div>
						<div className='leading-relaxed font-medium text-base tracking-wide py-10 italic text-gray-600'>
							{' '}
							{elem.desc}
						</div>
					</motion.div>

					<button className='bg-blue-700 text-white absolute left-5 bottom-5 uppercase px-4 py-2 rounded-md'>
						Заказать
					</button>

					<div className='absolute  bottom-5 right-10 w-full flex justify-center items-center'>
						<div
							className='absolute bottom-2 right-10 cursor-pointer text-red-500'
							onClick={clickPrev}
						>
							<svg
								xmlns='http://www.w3.org/2000/svg'
								width='32'
								height='32'
								viewBox='0 0 512 512'
							>
								<path
									fill='#fff'
									d='M256 48C141.13 48 48 141.13 48 256s93.13 208 208 208s208-93.13 208-208S370.87 48 256 48m35.31 292.69a16 16 0 1 1-22.62 22.62l-96-96a16 16 0 0 1 0-22.62l96-96a16 16 0 0 1 22.62 22.62L206.63 256Z'
									className='hover:fill-blue-700'
								></path>
							</svg>
						</div>

						<div
							className='absolute bottom-2 right-2 cursor-pointer'
							onClick={clickNext}
						>
							<svg
								xmlns='http://www.w3.org/2000/svg'
								width='32'
								height='32'
								viewBox='0 0 512 512'
							>
								<path
									fill='#fff'
									d='M48 256c0 114.87 93.13 208 208 208s208-93.13 208-208S370.87 48 256 48S48 141.13 48 256m257.37 0l-84.68-84.69a16 16 0 0 1 22.62-22.62l96 96a16 16 0 0 1 0 22.62l-96 96a16 16 0 0 1-22.62-22.62Z'
									className='hover:fill-blue-700'
								></path>
							</svg>
						</div>
					</div>
				</div>
			))}
		</div>
	)
}

export default Description

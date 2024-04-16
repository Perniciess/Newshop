'use client'

import Image from 'next/image'
import { useEffect, useState } from 'react'
import { images } from './constants'
import Description from './Description'

export default function Hero() {
	const [activeImage, setActiveImage] = useState(0)

	const clickNext = () => {
		activeImage === images.length - 1
			? setActiveImage(0)
			: setActiveImage(activeImage + 1)
	}
	const clickPrev = () => {
		activeImage === 0
			? setActiveImage(images.length - 1)
			: setActiveImage(activeImage - 1)
	}

	useEffect(() => {
		const timer = setTimeout(() => {
			clickNext()
		}, 5000)
		return () => {
			clearTimeout(timer)
		}
	}, [activeImage])

	return (
		<>
			<main className='grid place-items-center xxs:grid-cols-1 xs:grid-cols-1 grid-cols-2 w-full mx-auto max-w-5xl shadow-2xl rounded-2xl'>
				<div
					className={`w-full flex justify-center items-center gap-4 transition-transform ease-in-out duration-500 md:rounded-2xl p-6 md:p-0`}
				>
					{images.map((elem, idx) => (
						<div
							key={idx}
							className={`${
								idx === activeImage
									? 'block w-full h-[30vh] object-cover transition-all duration-500 ease-in-out'
									: 'hidden'
							}`}
						>
							<Image
								src={elem.src}
								alt=''
								width={300}
								height={300}
								className='w-full h-full object-cover md:rounded-tl-3xl md:rounded-bl-3xl'
							/>
						</div>
					))}
				</div>

				<Description
					activeImage={activeImage}
					clickNext={clickNext}
					clickPrev={clickPrev}
				/>
			</main>

			<div
				className={
					'grid  place-items-center xs:grid-cols-1 xxs:grid-cols-1 grid-cols-3 mt-10 ml-2 mb-10 px-5'
				}
			>
				<img src={'first.jpg'} />
				<div className={'grid grid-cols-1'}>
					<img src={'second.jpg'} className={'ml-4'} />
					<img src={'third.jpg'} className={'ml-4 mt-6'} />
				</div>
				<img src={'fourth.jpg'} className={'ml-14'} />
			</div>
		</>
	)
}

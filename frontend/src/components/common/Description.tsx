"use client";
import React from "react";
import { images } from "./constants";
import { motion } from "framer-motion";
import Image from "next/image";

type Props = {
    activeImage: any;
    clickNext: any;
    clickPrev: any;
};

const Description = ({ activeImage, clickNext, clickPrev }: Props) => {
    return (
        <div className="grid place-items-start w-full bg-blue-100 relative md:rounded-tr-3xl md:rounded-br-3xl">

            {images.map((elem, idx) => (
                <div
                    key={idx}
                    className={`${
                        idx === activeImage
                            ? "block w-full h-[60vh] px-10 text-left"
                            : "hidden"
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
                            ease: "linear",
                            duration: 2,
                            x: {duration: 1},
                        }}
                        className="w-full"
                    >
                        <div className="py-16 text-5xl font-extrabold">{elem.title}</div>
                        <div className="leading-relaxed font-medium text-base tracking-wide py-10 italic text-gray-600">
                            {" "}
                            {elem.desc}
                        </div>
                    </motion.div>

                    <button
                        className="bg-blue-950 text-white absolute left-5 bottom-5 uppercase px-4 py-2 rounded-md">
                        Заказать
                    </button>

                    <div
                        className="absolute  bottom-5 right-10 w-full flex justify-center items-center">
                        <div
                            className="absolute bottom-2 right-10 cursor-pointer"
                            onClick={clickPrev}
                        >
                            <img src={'left.svg'} alt=""/>
                        </div>

                        <div
                            className="absolute bottom-2 right-2 cursor-pointer"
                            onClick={clickNext}
                        >
                            <img src={'right.svg'} alt=""/>
                        </div>

                    </div>

                </div>

            ))}

        </div>
    );
};

export default Description;
"use client";

import { usePathname } from "next/navigation";
import { UserCircleIcon, ChatBubbleOvalLeftIcon } from "@heroicons/react/16/solid";
import { useAppSelector, useAppDispatch } from "@/redux/hooks";
import { useLogoutMutation } from "@/redux/features/authApiSlice";
import { logout as setLogout } from "@/redux/features/authSlice";
import { NavLink } from "@/components/common";
import Link from "next/link";

export default function Navbar() {
  const pathname = usePathname();
  const dispatch = useAppDispatch();

  const [logout] = useLogoutMutation();

  const { isAuthenticated } = useAppSelector((state) => state.auth);

  const handleLogout = () => {
    logout(undefined)
      .unwrap()
      .then(() => {
        dispatch(setLogout());
      });
  };

  const isSelected = (path: string) => pathname === path;

  const authLinks = () => (
    <>
      <NavLink onClick={handleLogout}>Logout</NavLink>
    </>
  );

  const guestLinks = () => (
    <>
      <NavLink isSelected={isSelected("/auth/login")} href="/auth/login">
        <p className="text-end">
          Войти
        </p>
         </NavLink>
    </>
  );

  return (
      <div>
          <div className={"flex items-center justify-between py-4 px-4"}>
              <Link href={"/"} className={"font-Montserrat font-bold text-2xl mx-3"}>
                  ITEM CLUB
              </Link>


              <ul className={" items-center justify-center flex xs:hidden sm:hidden md:flex-row lg:flex-row"}>
                  <li className={"px-3 py-3 font-Inter"}><Link href={"/auth/register"}>Кроссовки</Link></li>
                  <li className={"px-3 py-3 font-Inter"}>Одежда</li>
                  <li className={"px-3 py-3 font-Inter"}>Обувь</li>
                  <li className={"px-3 py-3 font-Inter"}>Аксессуары</li>
                  <li className={"px-3 py-3 font-Inter"}>Категории</li>
              </ul>
    
              {isAuthenticated ? authLinks() : guestLinks()}
          </div>

          <ul className={"items-center justify-center flex xs:flex-row sm:flex-row md:hidden lg:hidden bg-[#CBCBCB] text-white"}>
              <li className={"px-2 py-3 font-Inter text-sm"}>Кроссовки</li>
              <li className={"px-1 py-3 font-Inter text-sm"}>Одежда</li>
              <li className={"px-2 py-3 font-Inter text-sm"}>Обувь</li>
              <li className={"px-1 py-3 font-Inter text-sm"}>Аксессуары</li>
              <li className={"px-2 py-3 font-Inter text-sm"}>Категории</li>
          </ul>
      </div>
  );
}
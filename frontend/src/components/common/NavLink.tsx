import Link from "next/link";
import cn from "classnames";

interface Props {
  isSelected?: boolean;
  href?: string;
  children: React.ReactNode;
  [rest: string]: any;
}

export default function NavLink({
  isSelected,
  href,
  children,
  ...rest
}: Props) {
  const className = cn();

  if (!href) {
    return (
      <span className={className} role="button" onClick={rest.onClick}>
        {children}
      </span>
    );
  }

  return (
    <Link className={className} href={href}>
      {children}
    </Link>
  );
}
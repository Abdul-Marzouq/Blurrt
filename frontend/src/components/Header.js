import { Link } from "react-router-dom";

function Header() {
  return (
    <nav style={{ padding: "1rem", borderBottom: "1px solid #ccc" }}>
      <Link to="/" style={{ marginRight: "1rem" }}>Home</Link>
      <Link to="/post" style={{ marginRight: "1rem" }}>Post Anecdote</Link>
      <Link to="/login">Login</Link>
    </nav>
  );
}

export default Header;

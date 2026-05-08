#!/bin/bash

echo "🌿 DIRECT FULL REBUILD STARTING..."

# =========================
# CLEAN OLD FILES
# =========================
rm -rf css js pages
rm -f *.html

mkdir -p css
mkdir -p js
mkdir -p pages/civilisations

# =========================
# STYLE.CSS
# =========================
cat > css/style.css << 'EOF'
body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#f4f7f4;
    color:#222;
}

header{
    background:#0f3d2e;
    padding:15px 30px;
    position:sticky;
    top:0;
    z-index:999;
}

nav ul{
    margin:0;
    padding:0;
    display:flex;
    gap:20px;
    list-style:none;
}

nav a{
    color:white;
    text-decoration:none;
    font-weight:bold;
    font-size:18px;
}

.hero{
    background:
    linear-gradient(rgba(15,61,46,0.65), rgba(46,125,50,0.65)),
    url('https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=1600&q=80');

    background-size:cover;
    background-position:center;

    color:white;
    text-align:center;
    padding:140px 20px;
}

.hero h1{
    font-size:60px;
    margin-bottom:20px;
}

.hero h2{
    font-size:28px;
    font-weight:300;
}

.subbar{
    background:linear-gradient(90deg,#0f3d2e,#1b5e20);
    color:white;
    text-align:center;
    padding:15px;
    font-size:16px;
}

.content{
    max-width:1100px;
    margin:40px auto;
    background:white;
    padding:35px;
    border-radius:20px;
    box-shadow:0 4px 20px rgba(0,0,0,0.08);
    line-height:1.8;
    font-size:18px;
}

.card-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
    margin-top:30px;
}

.card{
    background:#fff;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 4px 15px rgba(0,0,0,0.08);
}

.card img{
    width:100%;
    height:180px;
    object-fit:cover;
}

.card-content{
    padding:20px;
}

footer{
    background:#0f3d2e;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:50px;
}
EOF

# =========================
# SCRIPT.JS
# =========================
cat > js/script.js << 'EOF'
console.log("Website loaded successfully");
EOF

# =========================
# INDEX.HTML
# =========================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sustainability from Ancient Civilisations</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="about.html">About</a></li>
<li><a href="pages/civilisations/index.html">Civilisations</a></li>
<li><a href="singapore.html">Singapore</a></li>
<li><a href="solution.html">Solution</a></li>
<li><a href="reflection.html">Reflection</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Sustainability from Ancient Civilisations</h1>
<h2>Applying Ancient Ideas to Modern Singapore</h2>
</div>

<div class="subbar">
Exploring how ancient systems inspire modern sustainability
</div>

<div class="content">
<h2>Project Overview</h2>

<p>
This project explores how ancient civilisations developed sustainable systems
to solve environmental problems and how these ideas can inspire Singapore today.
</p>

<div class="card-grid">

<div class="card">
<img src="https://images.unsplash.com/photo-1518655048521-f130df041f66?auto=format&fit=crop&w=1000&q=80">
<div class="card-content">
<h3>Indus Valley</h3>
<p>Advanced drainage and urban planning systems.</p>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1572252009286-268acec5ca0a?auto=format&fit=crop&w=1000&q=80">
<div class="card-content">
<h3>Ancient Egypt</h3>
<p>Nile irrigation and agricultural sustainability.</p>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1552832230-c0197dd311b5?auto=format&fit=crop&w=1000&q=80">
<div class="card-content">
<h3>Roman Aqueducts</h3>
<p>Gravity-powered water transport systems.</p>
</div>
</div>

</div>
</div>

<footer>
© 2026 Made by Eric, All rights reserved.
</footer>

<script src="js/script.js"></script>
</body>
</html>
EOF

# =========================
# PAGE FUNCTION
# =========================
create_page () {

FILE=$1
TITLE=$2
TEXT=$3

cat > $FILE << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>$TITLE</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="about.html">About</a></li>
<li><a href="pages/civilisations/index.html">Civilisations</a></li>
<li><a href="singapore.html">Singapore</a></li>
<li><a href="solution.html">Solution</a></li>
<li><a href="reflection.html">Reflection</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>$TITLE</h1>
</div>

<div class="subbar">
$TITLE
</div>

<div class="content">
<p>$TEXT</p>
</div>

<footer>
© 2026 Made by Eric
</footer>

</body>
</html>
EOF
}

# =========================
# MAIN PAGES
# =========================
create_page "about.html" "About the Project" "This project studies sustainable systems from ancient civilisations."

create_page "singapore.html" "Singapore's Challenges" "Singapore faces urban heat, water management, and sustainability challenges."

create_page "solution.html" "Proposed Solution" "Ancient sustainable systems can inspire future urban planning."

create_page "reflection.html" "Reflection" "Ancient ideas remain valuable for sustainable living today."

# =========================
# CIVILISATIONS INDEX
# =========================
cat > pages/civilisations/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Civilisations</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="../../index.html">Home</a></li>
<li><a href="../../about.html">About</a></li>
<li><a href="index.html">Civilisations</a></li>
<li><a href="../../singapore.html">Singapore</a></li>
<li><a href="../../solution.html">Solution</a></li>
<li><a href="../../reflection.html">Reflection</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Ancient Civilisations</h1>
</div>

<div class="subbar">
Explore detailed case studies
</div>

<div class="content">
<p>Select a civilisation to explore more details.</p>

<ul>
<li><a href="indus.html">Indus Valley</a></li>
<li><a href="egypt.html">Ancient Egypt</a></li>
<li><a href="rome.html">Roman Aqueducts</a></li>
</ul>

</div>

<footer>
© 2026 Made by Eric
</footer>

</body>
</html>
EOF

echo "✅ DIRECT REBUILD COMPLETE"
echo "🚀 NOW RUN:"
echo "git add ."
echo "git commit -m 'full rebuild'"
echo "git push"
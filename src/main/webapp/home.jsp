<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Type here</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Sriracha&display=swap');

    body {
      margin: 0;
      box-sizing: border-box;
    }

 

    /* CSS for main element */
    .intro {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      width: 100%;
      height: 520px;
      background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.5) 100%), url("https://th.bing.com/th/id/R.4d055db9e6ce0caba32d463a6245b908?rik=j5EGe5do3h3nXg&pid=ImgRaw&r=0");
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }

    .intro h1 {
      font-family: sans-serif;
      font-size: 60px;
      color: #ffc732;
     
      text-transform: uppercase;
      margin: 0;
    }

    .intro p {
      font-size: 20px;
      color: #d1d1d1;
   
      margin: 20px 0;
    }

    .intro button {
      background-color: #5edaf0;
      color: #000;
      padding: 10px 25px;
      border: none;
      border-radius: 5px;
      font-size: 20px;
      font-weight: bold;
      cursor: pointer;
      box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.4)
    }

    .achievements {
      display: flex;
      justify-content: space-around;
      align-items: center;
      padding: 40px 80px;
    }

    .achievements .work {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 0 40px;
    }

    .achievements .work i {
      width: fit-content;
      font-size: 50px;
      color: #333333;
      border-radius: 50%;
      border: 2px solid #333333;
      padding: 12px;
    }

    .achievements .work .work-heading {
      font-size: 20px;
      color: #333333;
      text-transform: uppercase;
      margin: 10px 0;
    }

    .achievements .work .work-text {
      font-size: 15px;
      color: #585858;
      margin: 10px 0;
    }

    .about-me {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 40px 80px;
      border-top: 2px solid #eeeeee;
    }

    .about-me img {
      width: 500px;
      max-width: 100%;
      height: auto;
      border-radius: 10px;
    }

    .about-me-text h2 {
      font-size: 30px;
      color: #333333;
      text-transform: uppercase;
      margin: 0;
    }

    .about-me-text p {
      font-size: 15px;
      color: #585858;
      margin: 10px 0;
    }

    /* CSS for footer */
    
    }
  </style>
</head>

<body >
  
  <main>
  
    <div class="intro">
    <jsp:include page="header.jsp"/>
      <h1>Alpha Online Games</h1>
      <p>We Provide Best Online Games For You.</p>
     <a href="AboutUs.jsp"><button >About Us</button></a> 
    </div>
    <div class="achievements">
      <div class="work">
        <i class="fas fa-atom"></i>
        <p class="work-heading">Projects</p>
        <p class="work-text">I have worked on many projects and I am very proud of them. I am a very good developer and I am always looking for new projects.</p>
      </div>
      <div class="work">
        <i class="fas fa-skiing"></i>
        <p class="work-heading">Skills</p>
        <p class="work-text">I have a lot of skills and I am very good at them. I am very good at programming and I am always looking for new skills.</p>
      </div>
      <div class="work">
        <i class="fas fa-ethernet"></i>
        <p class="work-heading">Network</p>
        <p class="work-text">I have a lot of network skills and I am very good at them. I am very good at networking and I am always looking for new network skills.</p>
      </div>
    </div>
    <div class="about-me">
      <div class="about-me-text">
        <h2>Alpha Gaming</h2>
        <p>Gaming refers to playing electronic games, whether through consoles, computers, mobile phones or another medium altogether. Gaming is a nuanced term that suggests regular gameplay, possibly as a hobby. Although traditionally a solitary form of relaxation, online multiplayer video games have made gaming a popular group activity as well.

A person who is into gaming is often called a gamer or hardcore gamer.</p>
      </div>
      <img src="https://th.bing.com/th/id/R.de8d7f7a3bc6318033a6780405d97ad7?rik=%2fQmnD8N6P%2fTovQ&riu=http%3a%2f%2fwww.100hdwallpapers.com%2fwallpapers%2f1920x1200%2fcall_of_duty_online_game-widescreen_wallpapers.jpg&ehk=MZgbQJa2TDYOGm9kSPEOMw7LyzlBRkcWehezo7OYy%2bA%3d&risl=&pid=ImgRaw&r=0" alt="me">
    </div>
  </main>
 <jsp:include page="footer.jsp" />
</body>

</html>

<!DOCTYPE html>
<!-- saved from url=(0089)https://www.w3schools.com/w3css/tryit.asp?filename=tryw3css_templates_analytics&stacked=h -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>Non Smoke Management</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS_Design_Part/w3.css">
<link rel="stylesheet" href="CSS_Design_Part/css">
<link rel="stylesheet" href="CSS_Design_Part/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
</head><body class="w3-light-grey" contenteditable="false">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i> &nbsp;Menu</button>
  <span class="w3-bar-item w3-left">CSWAT NST TOOL</span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="CSS_Design_Part/avatar2.png" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span>Welcome,<strong>Pavan</strong></span><br>
      </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
    <a href="" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>&nbsp; Close Menu</a>
    
    <a  class="w3-bar-item w3-button w3-padding" href= "${pageContext.request.contextPath}/SiteController?page=index"  class="w3-bar-item w3-button w3-padding">&nbsp; Home</a>
    <a href="${pageContext.request.contextPath}/OperationController?page=Admin_Approval" class="w3-bar-item w3-button w3-padding">&nbsp; Requested Users</a>
    <a href="" class="w3-bar-item w3-button w3-padding">&nbsp; Update Defect</a>
    <a href="" class="w3-bar-item w3-button w3-padding">&nbsp; Log Out</a>
  
    
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h5><b> My Dashboard</b></h5>
  </header>

  <div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"></i></div>
        <div class="w3-right">
          <h3>52</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>No. Of Defects</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"></div>
        <div class="w3-right">
          <h3>99</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>In Progress</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"></div>
        <div class="w3-right">
          <h3>23</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Closed</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"></div>
        <div class="w3-right">
          <h3>50</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>To be Supported</h4>
      </div>
    </div>
  </div>

  
  
  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="hospitalServices.ReceptionistService"%>
<%@page import="hospitalModel.Patient"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Hospital Management System</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--5grid--><script src="css/5grid/viewport.js"></script><!--[if lt IE 9]><script src="css/5grid/ie.js"></script><![endif]--><link rel="stylesheet" href="css/5grid/core.css" />
		<link rel="stylesheet" href="css/style.css" />
                <link rel="stylesheet" href="css/tableStyle.css"/>
		<!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
	</head>
	<body>
	<!-- ********************************************************* -->
		<div id="header-wrapper">
			<div class="5grid">
				<div class="12u-first">
					
					<header id="header">
						<h1><a href="home.jsp">Hospital</a></h1>
						<nav>
							<a href="home.jsp">Home</a>
							<a href="doctors.jsp">Doctors</a>
							<a href="nurses.jsp"> Nurses</a>
							<a href="patients.jsp" class="current-page-item">Patients</a>
							<a href="patientappointment.jsp">Patient appointment</a>
                                                        <a href="addpatient.jsp">Manage Patient</a>
						</nav>
					</header>
				
				</div>
			</div>
		</div>
                
		<div id="main">
			<div class="5grid">
				<div class="main-row">
                                    <h1>Add Patient</h1>
					<div class="6u">
					
					<form  name = "form" method ="post" action ="AddPatient">
            <fieldset>
                                        <table>
                     <tr>
                        <td width="10%" align="RIGHT">Patient No</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="pNo" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">First Name</td>
                        <td width="10%" align="LEFT"><input type="Text" name="name" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Last Name</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="surname" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Street Name</td>
                        <td width="10%" align="LEFT"><input type="Text" name="sName" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">House No</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="hNo" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">City</td>
                        <td width="10%" align="LEFT"><input type="Text" name="city" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Cell No</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="cell" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Sex</td>
                        <td width="10%" align="LEFT"><input type="Text" name="sex" size="30" maxlength="1" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Marital Status</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="mStatus" size="30" maxlength="1" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Admission Status</td>
                        <td width="10%" align="LEFT"><input type="Text" name="aStatus" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td></td><td align="LEFT"><input type="submit" NAME="cBook" value="Register Patient" size="20"><input type="reset" name="reset" value="Clear" size="10"> </td>
                    </tr>
                    
                </table>
                 </fieldset>
        </form>	
                                                        
 
                                                        
						

					</div>
				</div>
                            
                            <div class="main-row">
                                    <h1>Update Patient</h1>
					<div class="6u">
					
					<form  name = "form" method ="post" action ="UpdatePatient">
            <fieldset>
                                        <table>
                     <tr>
                        <td width="10%" align="RIGHT">Patient No</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="pNo" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">First Name</td>
                        <td width="10%" align="LEFT"><input type="Text" name="name" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Last Name</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="surname" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Street Name</td>
                        <td width="10%" align="LEFT"><input type="Text" name="sName" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">House No</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="hNo" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">City</td>
                        <td width="10%" align="LEFT"><input type="Text" name="city" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Cell No</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="cell" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Sex</td>
                        <td width="10%" align="LEFT"><input type="Text" name="sex" size="30" maxlength="1" ></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Marital Status</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="mStatus" size="30" maxlength="1" id = "d"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="RIGHT">Admission Status</td>
                        <td width="10%" align="LEFT"><input type="Text" name="aStatus" size="30" maxlength="30" ></td>
                    </tr>
                    <tr>
                        <td></td><td align="LEFT"><input type="submit" NAME="cBook" value="Update Patient" size="20"><input type="reset" name="reset" value="Clear" size="10"> </td>
                    </tr>
                    
                </table>
                 </fieldset>
        </form>

					</div>
				</div>
                            
                            
                            
                            
                            <div class="main-row">
                                    <h1>Delete Patient</h1>
					<div class="6u">
					
					<form  name = "form" method ="post" action ="DeletePatient">
            <fieldset>
                                        <table>
                     <tr>
                        <td width="10%" align="RIGHT">Patient No</td>
                        <td width="10%" align="LEFT"><input type="TEXT" name="pNo" size="30" maxlength="30" id = "d"></td>
                    </tr>
                    
                    <tr>
                        <td></td><td align="LEFT"><input type="submit" NAME="cBook" value="Delete Patient" size="20"><input type="reset" name="reset" value="Clear" size="10"> </td>
                    </tr>
                    
                </table>
                 </fieldset>
        </form>

					</div>
				</div>
                            
                            
			</div>
		</div>
		<div id="footer-wrapper">
			<div class="5grid">
				
				
				<div class="12u-first">

					<div id="copyright">
						&copy; 2012 An Untitled Website. Design by <a href="http://nodethirtythree.com/">nodethirtythree</a> + <a href="http://www.freecsstemplates.org/">FCT</a>. Photos by <a href="http://fotogrph.com/">Fotogrph</a>.
					</div>

				</div>
			</div>
		</div>
	<!-- ********************************************************* -->
	</body>
</html>


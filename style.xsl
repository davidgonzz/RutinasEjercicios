<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			<head>
				<title>Title</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta
					name="viewport"
					content="width=device-width, initial-scale=1, shrink-to-fit=no"
					/>
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link
					href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
					rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
					crossorigin="anonymous"
					/>
				<link rel="stylesheet" href="style.css"/>
			</head>
			
			<body>
				<header>
					<div class="col-11 mx-auto ">
						<div class="bg-light px-2 row py-4 align-items-center">
							<div class="col-4">
								<img class="img-fluid w-50" src="img/logo.png" alt=""/>
								
							</div>
							
							<div class="col-4 text-primary text-center">
								<h2>IES AZARQUIEL</h2>
							</div>
							
							<div class="col-4 text-end">
								
								<img class="img-fluid w-50" src="img/logo.png" alt=""/>
							</div>
						</div>
						
					</div>
				</header>
				<main>
					<div class="col-11 mx-auto">
						<div class="row mx-0 py-3 px-2">
							<xsl:for-each select="fitness/target">
								<div class="col-lg-2 col-md-3 col-sm-4 col-6 d-flex mb-4">
									<div class="card bg-light">
										<img class="card-img-top img-fluid" src="img/targetmap.png" alt="Title" />
										<div class="card-body">
											<h4 class="card-title text-primary text-center"><xsl:value-of select="@name"/></h4>
										</div>
									</div>
									
								</div>
							</xsl:for-each>
							
						</div>
					</div>
					<xsl:for-each select="/fitness/target">
						<h1 class="text-center bg-blue text-white mb-2">Target: <xsl:value-of select="@name"/></h1>
						<div class="col-11 mx-auto">
							<div class="col fondoazul text-center text-white py-2 px-2" id="{@name}">
								
							</div>
							<div class="row mx-0 ">
								<xsl:for-each select="exercise">
									<div class="col-lg-6 d-flex pb-2" >
										<div class="card bg-light mt-1">
											<div class="row mx-0 pt-2 ">
												<div class="col-6">
													<img class="img-fluid" src="{gifUrl}" alt=""/>
												</div>
												<div class="col-6 ps-2 text-primary">
													<h3><strong><xsl:value-of select="name"/></strong></h3>
													<h5>Body Part: <xsl:value-of select="bodyPart"/></h5>
													<h5>Equipment: <xsl:value-of select="equipment"/></h5>
												</div>
											</div>
											
										</div>
										
									</div>
								</xsl:for-each>
								
							</div>
						</div>
					</xsl:for-each>
					
				</main>
				<footer>
					<h1 class="text-center bg-light text-primary m-0">XSL-DAM-DAW</h1>
					<a href="#top">
						<i class="fa fa-3x text-danger fa-arrow-circle-o-up m-3" aria-hidden="true"></i>
					</a>
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script
					src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"
					></script>
				
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"
					></script>
			</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>
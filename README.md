<h1>rails4-devise-pundit-rspecs</h1>
<a href="https://codeclimate.com/github/Jrakesh/rails4-devise-pundit-rspecs"><img src="https://codeclimate.com/github/Jrakesh/rails4-devise-pundit-rspecs.png" /></a>

<p>This is a <strong>Rails v4.0.2</strong> starter app and can be used as a boilerplate for your project. Start your ambitious web application project instantly.</p>

<p>Out-of-the-box features:</p>
<ol>
	<li>Devise + Pundit for authorization and role based authentication.</li>
	<li>Bootstrap-3 integration.</li>
	<li>Rspecs test features included.</li>
</ol>


<h4><a href="https://github.com/elabs/pundit">Pundit</a></h4>
<p>This gem performs role-based authorization through OO design and pure Ruby classes for a simple, robust and scaleable authorization system.</p>
<p>Currently only admin users are given <strong>all</strong> the access. You can add up more access definitions in policy class at app/policies</p>
<p>One default admin user is created. See config/application.yml for more settings.</p>
<p>Pundit offers the advantage of segregating access rules into a central location. In Pundit, it’s a folder named app/policies/ containing plain Ruby objects that implement access rules. Pundit policy objects are lightweight, adding authorization logic without as much overhead as CanCan. Pundit is well-suited to the service-oriented architecture that is growing in popularity among Rails developers, emphasizing object-oriented design with discrete Ruby objects providing specialized services.</p>


<h4>Rspecs</h4>
<p>Full proof test scenarios are included to test the features. The tests are written using rspec-rails+capybara.</p>

<hr>
<p>Use this code as you want! <strong>HAPPY CODING !!</strong></p>

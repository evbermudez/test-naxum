#!C:\Strawberry\perl\bin\perl.exe

use DBI;
use strict;
use warnings;
# use CGI qw{ :standard };
# use CGI::Carp qw{ fatalsToBrowser };
use DateTime;



#flow?
print_page_header();
print_html_head_section();
print_html_body_section();





#subroutines
sub print_page_header {
    # Print the HTML header (don't forget TWO newlines!)
    print "Content-type:  text/html\n\n";
}

sub print_html_head_section {
    # Include stylesheet 'pm.css', jQuery library,
    # and javascript 'pm.js' in the <head> of the HTML.
    ##
    print "<head>\n";
    print "<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css' integrity='sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO' crossorigin='anonymous'>\n";
    print "<link rel='stylesheet' href='css/style.css'>\n";
    print '<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>';
    print '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>';
    print '<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>';
    print '<script src="js/push.min.js"></script>';
    print "</head>\n";
}
#can be refactored but, .... 
sub print_html_body_section{
    #misc vars
    my $start_time = DateTime->now;


    #db variables
    my $driver = "mysql"; 
    my $database = "testnxm";
    my $hostname = "localhost";
    my $dsn = "DBI:$driver:database=$database;host=$hostname";
    my $dbuser = "root";
    my $dbpassword = "";
    #connect to db
    my $dbh = DBI->connect($dsn, $dbuser, $dbpassword ) or die $DBI::errstr;
    #db query statement
    my $sth = $dbh->prepare("SELECT u.id, u.site, u.email, u.address, u.fname, u.lname, u.sponsorid, u.dayphone FROM users u ORDER BY u.id ASC");
    $sth->execute() or die $DBI::errstr;
    my $end_time = DateTime->now;
    my $db_elapsed_time = ($end_time->subtract_datetime($start_time))->seconds;


    #store result of query
    my $users = $sth->fetchall_arrayref({});

    my @users = @{$users};

    my $superupline = @users[0];
    print "<body>\n";
        #print db query time?
        # print "<input type='hidden' id='time_start' value='".$delta->millisecond."' />'";
        print "<input type='hidden' id='time_db' value='".$db_elapsed_time."' />";
        print "<div class='container-fluid'>";
        print "<div class='row'>";
        print "<div class='col'>";
        print "<h1>Click Users to See Info</h1>";
        #first user is the highest sponsor?
        print "<ul><li><a tabindex='0' data-html='true' role='button' data-toggle='popover' data-trigger='focus' title='User Info' data-content='"."First Name:<b> ".$superupline->{fname}."</b><br>"."Last Name: <b>".$superupline->{lname}."</b><br>"."E-mail: <b>".$superupline->{email}."</b><br>"."Address: <b>".$superupline->{address}."</b><br>"."Day Phone: <b>".$superupline->{dayphone}."</b><br>"."Sponsor: <b>".$superupline->{sponsorid}."</b><br>"."' href='#' class='popover-dismiss'>". $superupline->{id} . "# ". $superupline->{site} ."</a></li>";

        print_downline($superupline, @users);

        sub print_downline($) {
            #print "kokey\n\n";
            my $count = scalar(@_); #count 
            
            my @users = @_; #passed array
            my $passed_user = $_[0];   	
            my $passed_user_id = $passed_user->{id}; 

            # print "count: " . $count;
            # print "passed user: " . $passed_user;
            # print "passed user id: " . $passed_user_id;
        #skip 1 user?
            for (my $i = 2; $i < $count; ++$i) 
            {
                
                my $downline_info = @users[$i];
                if ($passed_user_id == $downline_info->{sponsorid})
                {		
                    #print downline
                    print "<ul><li><a tabindex='0' data-html='true' role='button' data-toggle='popover' data-trigger='focus' title='User Info' data-content='"."First Name:<b> ".$downline_info->{fname}."</b><br>"."Last Name: <b>".$downline_info->{lname}."</b><br>"."E-mail: <b>".$downline_info->{email}."</b><br>"."Address: <b>".$downline_info->{address}."</b><br>"."Day Phone: <b>".$downline_info->{dayphone}."</b><br>"."Sponsor: <b>".$downline_info->{sponsorid}."</b><br>"."' href='#' class='popover-dismiss'>". $downline_info->{id} . "# ". $downline_info->{site} ."</a></li>"; 
                    print_downline($downline_info, @users);
                    print "</ul>";
                }
            }
        }
        print "</ul>";

        print "</div>";
        print "</div>";
        print "</div>";

        $sth->finish();
        $dbh->disconnect;
        print "<script src='js/scripts.js'>";
        
        print "</script>";
    print "</body>\n";

}
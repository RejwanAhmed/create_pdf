<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/teacher.css" />
	<link rel="stylesheet" href="css/teacher_sidebar.css">
    <link rel="stylesheet" href="css/all.css">

    <script defer src="js/solid.js"></script>
    <script defer src="js/fontawesome.js"></script>
    <title>Document</title>
</head>
<body>
    <?php

            $conn = mysqli_connect("localhost","root","","result_processing_system");

            $id_validation_qry = "SELECT r.id, st.roll_no, r.attendance, r.mid1, r.mid2, r.ass_pre, r.1st_examinee, r.2nd_examinee, r.3rd_examinee,r.total_final_marks FROM result as r INNER JOIN student_information as st ON r.student_id = st.id WHERE r.session = '2015-2016' && r.course_year = '1st year' && r.course_semester = '1st semester' && r.course_id = '1'";
            $run_id_validation_qry = mysqli_query($conn, $id_validation_qry);

            // @page {
            //     padding: 0px;
                // margin: 10px;       // Use it in style tag
            //     size: auto;
            // }
            $data = '<style>
            *
            {
                margin:0;
                padding: 0;
            }
            .table{width: 100%; border-collapse: collapse}
            .table td, .table th{
                border: 1px solid black;
                padding: 5px 5px;
                font-size: 8px;
                text-align:center;
            }
            .data
            {
                font-weight: bold;
            }
            .header_part
            {
                background-color: rgba(0,0,0,.03);
                color:black;
                text-align:center;
                margin-bottom: 5px;
                border-bottom:1px solid rgba(0,0,0,.125);
                padding: 1px;
            }

            p,h3
            {
                margin: 1px;
                text-align: center;
            }

            </style>';
            // $data.= '<div class = "header_part">';
            //
            // $data.='<h3>Jatiya Kabi Kazi Nazrul Islam University</h3>';
            // $data.='<p>Dept. of Computer Science And Engineering</p>';
            // $data.='<p>1st Year 1st Semester Final Examination - 2020</p>';
            // $data.='<p>Session: 2019-2020</p>';
            // $data.='<p>Subject Code: <b>CSE-101</b> Sbuject Name: <b>Computer Fundamentals And Programming Basics</b></p>';
            // $data.='</div>';

            $data.='<table class = "table table-bordered" style="overflow: wrap" >';
            $data .= '';
            $data .= '<thead>
                    <tr>
                    <th width = "10%">Roll</th>
                    <th>Attendance <br />(10%)</th>
                    <th>Mid1 <br />(10%)</th>
                    <th>Mid2 <br />(10%)</th>
                    <th>Assi./Presen. <br />(10%)</th>
                    <th>Continuous <br />(40%)</th>
                    <th>Examiner- <br />I</th>
                    <th>Examiner- <br />II</th>
                    <th>Examiner- <br />III</th>
                    <th>Final <br />(60%)</th>
                    <th>Total <br />(100)</th>
                    <th>Letter Grade</th>
                    <th>Grade Point</th>
                    </tr>
                    </thead>';
            // $data .= '<table class = "table table-bordered" style="overflow: wrap">';
            while($row = mysqli_fetch_assoc($run_id_validation_qry))
            {
                $totaL_internal = $row['attendance'] + $row['mid1'] + $row['mid2'] + $row['ass_pre'];
                if($row['3rd_examinee']==-1)
                {
                    $_3rd_examinee = "";
                }
                else
                {
                    $_3rd_examinee = $row['3rd_examinee'];
                }
                $total_marks = $totaL_internal + $row['total_final_marks'];

                // Grading Count
                if($total_marks>=80)
                {
                    $letter_grade = "A+";
                    $grade_point = "4.00";
                }
                else if($total_marks>=75 && $total_marks <80)
                {
                    $letter_grade = "A";
                    $grade_point = "3.75";
                }
                else if($total_marks>=70 && $total_marks <75)
                {
                    $letter_grade = "A-";
                    $grade_point = "3.50";
                }
                else if($total_marks>=65 && $total_marks <70)
                {
                    $letter_grade = "B+";
                    $grade_point = "3.25";
                }
                else if($total_marks>=60 && $total_marks <65)
                {
                    $letter_grade = "B";
                    $grade_point = "3.00";
                }
                else if($total_marks>=55 && $total_marks <60)
                {
                    $letter_grade = "B-";
                    $grade_point = "2.75";
                }
                else if($total_marks>=50 && $total_marks <55)
                {
                    $letter_grade = "C+";
                    $grade_point = "2.50";
                }
                else if($total_marks>=45 && $total_marks <50)
                {
                    $letter_grade = "C";
                    $grade_point = "2.25";
                }
                else if($total_marks>=40 && $total_marks <45)
                {
                    $letter_grade = "D";
                    $grade_point = "2.00";
                }
                else
                {
                    $letter_grade = "F";
                    $grade_point = "0";
                }

                $data.='<tr><td>'.$row['roll_no'].'</td><td>'.$row['attendance'].'</td><td>'.$row['mid1'].'</td><td>'.$row['mid2'].'</td><td>'.$row['ass_pre'].'</td><td class = "data">'.$totaL_internal.'</td><td>'.$row['1st_examinee'].'</td><td>'.$row['2nd_examinee'].'</td><td>'.$_3rd_examinee.'</td><td class = "data">'.$row['total_final_marks'].'</td><td class = "data">'.$total_marks.'</td><td>'.$letter_grade.'</td><td class = "data">'.$grade_point.'</td></tr>';
            }
            $data.='</table>';
            // $mpdf->SetDisplayMode('fullpage');
            // $mpdf->addPage('L');
            require_once __DIR__ . '/vendor/autoload.php';
            $mpdf = new \Mpdf\Mpdf();
            // $mpdf = SetHeaderByName('hudai');
            $mpdf->SetHTMLHeader('<div class = "header_part"> <h3>Jatiya Kabi Kazi Nazrul Islam University</h3> <p>Dept. of Computer Science And Engineering</p> <p>1st Year 1st Semester Final Examination - 2020</p> <p>Session: 2019-2020</p> <p>Subject Code: <b>CSE-101</b> Sbuject Name: <b>Computer Fundamentals And Programming Basics</b></p> </div>');

            $mpdf->AddPage('', // L - landscape, P - portrait
        '', '', '', '',
        5, // margin_left
        5, // margin right
       37, // margin top
       20, // margin bottom
        5, // margin header
        0); // margin footer
            $mpdf->WriteHtml($data); // will crate the pdf
            ob_clean();
            $file_name = time().'.pdf';
            $mpdf->Output($file_name,'D'); // d for download
            // echo $data;
    ?>
</body>
</html>

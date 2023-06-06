<?php

        $conn = mysqli_connect("localhost","root","","result_processing_system");

        $id_validation_qry = "SELECT r.id, r.course_id, st.roll_no, r.total_internal, r.total_final_marks FROM result as r JOIN student_information as st ON r.student_id = st.id WHERE r.session = '2015-2016' AND r.course_year = '1st year' AND r.course_semester = '1st semester' ORDER BY st.roll_no, r.course_id ASC ";
        $run_id_validation_qry = mysqli_query($conn, $id_validation_qry);

        $assigned_course = "SELECT ac.course_id, c.course_code, c.course_credit  FROM assigned_course_information as ac INNER JOIN course_information as c ON ac.course_id = c.id WHERE ac.session = '2015-2016' AND ac.course_year = '1st year' AND ac.course_semester = '1st semester' AND ac.course_id !='-1' AND ac.teacher_id !='-1' AND ac.verification = '1'";
        $run_assigned_course = mysqli_query($conn, $assigned_course);
        $rows =  mysqli_num_rows($run_assigned_course);


   //      // @page {
   //      //     padding: 0px;
   //          // margin: 10px;       // Use it in style tag
   //      //     size: auto;
   //      // }
        $data = '<style>
        *
        {
            margin:0;
            padding: 0;
        }
        .table{width: 100%; border-collapse: collapse;}
        .table td, .table th{
            border: 1px solid black;
            padding: 5px 5px;
            font-size: 8px;
            text-align:center;
            // font-size: 20px;
        }
        .main_table
        {
            padding: 0px;
        }
        hr
        {
            font-weight: bold;
        }
        .data
        {
            font-weight: bold;
        }

        p,h3
        {
            margin: 5px;
            text-align: center;
        }
        .main_header
        {
            background-color: rgba(0,0,0,.03);
            color:black;
            text-align:center;
            border-bottom:1px solid rgba(0,0,0,.125);
            width: 100%;
            padding: 10px;
        }
        .second_header
        {
            color:black;
            text-align:center;
            width: 100%;
            padding: 10px;
        }
        .right_header
        {
            width: 25%;
            float: left;
        }
        .left_header
        {
            width: 50%;
            float: left;
        }

        </style>';
        $data.='<table class = "table table-bordered" style="overflow: wrap">';
        $data .= '<thead>
                    <tr>
                        <th width = "5%">Roll</th>';
        while($row = mysqli_fetch_assoc($run_assigned_course))
        {
            $data.= '<th style = "padding: 0px;">'.$row['course_code'].'('.$row['course_credit'].' Cr)
                    <table class = "table" style = "overflow: wrap; width: 100%;" >
                        <tr text-rotate="90">
                            <td style = "border-left:0px; border-bottom: 0px; width: 20px;">Theory Continuous(40%)</td>
                            <td style = "border-left:0px; border-bottom: 0px; width: 20px;">Theory Final Exam(60%)</td>
                            <td style = "border-left:0px; border-bottom: 0px; width: 20px;">Total(100%)</td>
                            <td  style = "border-left:0px; border-bottom: 0px; width: 20px;">LG</td>
                            <td  style = " border-left:0px; border-right:0px; border-bottom: 0px; width: 20px;">GP</td>
                        </tr>
                    </table>
                    </th>';
                    $data.= '<th style = "padding: 0px;">'.$row['course_code'].'('.$row['course_credit'].' Cr)
                            <table class = "table" style = "overflow: wrap; width: 100%;" >
                                <tr text-rotate="90">
                                    <td style = "border-left:0px; border-bottom: 0px; width: 20px;">Theory Continuous(40%)</td>
                                    <td style = "border-left:0px; border-bottom: 0px; width: 20px;">Theory Final Exam(60%)</td>
                                    <td style = "border-left:0px; border-bottom: 0px; width: 20px;">Total(100%)</td>
                                    <td  style = "border-left:0px; border-bottom: 0px; width: 20px;">LG</td>
                                    <td  style = " border-left:0px; border-right:0px; border-bottom: 0px; width: 20px;">GP</td>
                                </tr>
                            </table>
                            </th>';
        }

        $data .= '<th width = "5%">Total CGP <br /> in 1st Year <br /> 1st Semester <br />(Total Cr. Hr 21.0)</th>

                </tr>
                </thead>';
        // while($row = mysqli_fetch_assoc($run_id_validation_qry))
        // {
        //     $totaL_internal = $row['attendance'] + $row['mid1'] + $row['mid2'] + $row['ass_pre'];
        //     if($row['3rd_examinee']==-1)
        //     {
        //         $_3rd_examinee = "";
        //     }
        //     else
        //     {
        //         $_3rd_examinee = $row['3rd_examinee'];
        //     }
        //     $total_marks = $totaL_internal + $row['total_final_marks'];
        //
        //     // Grading Count
        //     if($total_marks>=80)
        //     {
        //         $letter_grade = "A+";
        //         $grade_point = "4.00";
        //     }
        //     else if($total_marks>=75 && $total_marks <80)
        //     {
        //         $letter_grade = "A";
        //         $grade_point = "3.75";
        //     }
        //     else if($total_marks>=70 && $total_marks <75)
        //     {
        //         $letter_grade = "A-";
        //         $grade_point = "3.50";
        //     }
        //     else if($total_marks>=65 && $total_marks <70)
        //     {
        //         $letter_grade = "B+";
        //         $grade_point = "3.25";
        //     }
        //     else if($total_marks>=60 && $total_marks <65)
        //     {
        //         $letter_grade = "B";
        //         $grade_point = "3.00";
        //     }
        //     else if($total_marks>=55 && $total_marks <60)
        //     {
        //         $letter_grade = "B-";
        //         $grade_point = "2.75";
        //     }
        //     else if($total_marks>=50 && $total_marks <55)
        //     {
        //         $letter_grade = "C+";
        //         $grade_point = "2.50";
        //     }
        //     else if($total_marks>=45 && $total_marks <50)
        //     {
        //         $letter_grade = "C";
        //         $grade_point = "2.25";
        //     }
        //     else if($total_marks>=40 && $total_marks <45)
        //     {
        //         $letter_grade = "D";
        //         $grade_point = "2.00";
        //     }
        //     else
        //     {
        //         $letter_grade = "F";
        //         $grade_point = "0";
        //     }
        //
        //     $data.='<tr><td>'.$row['roll_no'].'</td><td>'.$row['attendance'].'</td><td>'.$row['mid1'].'</td><td>'.$row['mid2'].'</td><td>'.$row['ass_pre'].'</td><td class = "data">'.$totaL_internal.'</td><td>'.$row['1st_examinee'].'</td><td>'.$row['2nd_examinee'].'</td><td>'.$_3rd_examinee.'</td><td class = "data">'.$row['total_final_marks'].'</td><td class = "data">'.$total_marks.'</td><td>'.$letter_grade.'</td><td class = "data">'.$grade_point.'</td></tr>';
        // }
        $i=0;
        while($row = mysqli_fetch_assoc($run_id_validation_qry))
        {
            if($i==0)
            {
                $data.='<tr>
                        <td>'.$row['roll_no'].'</td>';

            }
            if($i<2)
            {
                $data.='<td style = "padding: 0px;">
                <table class = "table" style = "overflow:wrap; width: 100%;" autosize="1">
                <tr>
                <td style = " border-left:0px; border-bottom: 0px; width: 100%;">'.$row['total_internal'].'</td>
                <td style = " border-left:0px; border-bottom: 0px; width: 100%;">'.$row['total_final_marks'].'</td>
                <td style = " border-left:0px; border-bottom: 0px; width: 100%;">60</td>
                <td style = " border-left:0px; border-bottom: 0px; width: 100%;">B</td>
                <td style = " border-left:0px; border-right:0px; border-bottom: 0px; width: 100%;">3.25</td>
                </tr>
                </table>
                </td>';
                $i++;

            }
            if($i==2)
            {
                $data.='</tr>';
                $i=0;
            }

        }
        $data.='</table>';
        require_once __DIR__ . '/vendor/autoload.php';
        $mpdf = new \Mpdf\Mpdf();
        $mpdf->SetHTMLHeader('<div class = "main_header">
                            	<div align = "left" class = "left_header" >
                            		 <h3>Jatiya Kabi Kazi Nazrul Islam University</h3> <p>Dept. of Computer Science And Engineering</p> <p>Tabulation Sheet of B.Sc. Engg. 1st Year 1st Semester Final Examination - 2020</p> <p>Session: 2019-2020</p>
                            	</div>
                            	<div align="left" class = "right_header">
                            		<table class = "table">
                                        <thead>
                                            <tr>
                                                <th>Numerical Grade</th>
                                                <th>Grade Point</th>
                                                <th>Letter Grade</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>80% and above</td>
                                            <td>A+</td>
                                            <td>4.00</td>
                                        </tr>
                                        <tr>
                                            <td>75% to less than 80%</td>
                                            <td>A</td>
                                            <td>3.75</td>
                                        </tr>
                                        <tr>
                                            <td>70% to less than 75%</td>
                                            <td>A-</td>
                                            <td>3.50</td>
                                        </tr>
                                        <tr>
                                            <td>65% to less than 70%</td>
                                            <td>B+</td>
                                            <td>3.25</td>
                                        </tr>
                                        <tr>
                                            <td>60% to less than 65%</td>
                                            <td>B</td>
                                            <td>3.00</td>
                                        </tr>
                                    </table>
                            	</div>
                                <div align="left" class = "right_header">
                            		<table class = "table">
                                        <thead>
                                            <tr>
                                                <th>Numerical Grade</th>
                                                <th>Grade Point</th>
                                                <th>Letter Grade</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>55% to less than 60%</td>
                                            <td>B-</td>
                                            <td>2.75</td>
                                        </tr>
                                        <tr>
                                            <td>50% to less than 55%</td>
                                            <td>C+</td>
                                            <td>2.50</td>
                                        </tr>
                                        <tr>
                                            <td>45% to less than 50%</td>
                                            <td>C</td>
                                            <td>2.25</td>
                                        </tr>
                                        <tr>
                                            <td>40% to less than 45%</td>
                                            <td>D</td>
                                            <td>2.00</td>
                                        </tr>
                                        <tr>
                                            <td>less than 40%</td>
                                            <td>F</td>
                                            <td>00</td>
                                        </tr>
                                    </table>
                            	</div>
                            </div>
                            <div class = "second_header">
                            <h3>Courses And Credits</h3>
                            <h3>1st Year 1st Semester Final Examination</h3>
                            </div>');

        $mpdf->AddPage('L', // L - landscape, P - portrait
    '', '', '', '',
    5, // margin_left
    5, // margin right
   65, // margin top
   20, // margin bottom
    5, // margin header
    0); // margin footer
        $mpdf->WriteHtml($data); // will crate the pdf
        ob_clean();
        $file_name = time().'.pdf';
        $mpdf->Output($file_name,'D'); // d for download
        // echo $data;
?>

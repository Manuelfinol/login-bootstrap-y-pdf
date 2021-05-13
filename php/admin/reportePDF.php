<?php

require_once('../../tcpdf/tcpdf.php');


// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo
        $image_file = '../../img/logo/logo.png';
        $this->Image($image_file, 30, 20, 30, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);
        // Set font
        $this->SetFont('helvetica', 'B', 20);
        $this->SetXY(0,30);
        $this->Cell(0, 15, 'Nombre de Empresa', 0, false, 'C', 0, '', 0, false, 'M', 'M');

        $this->SetFont('helvetica', 'BI', 15);
        $this->SetXY(0,35);
        $this->Cell(0, 15, 'A tu lado siempre', 0, false, 'C', 0, '', 0, false, 'M', 'M');
    }

    // Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-15);
        // Set font
        $this->SetFont('helvetica', 'I', 8);
        // Page number
        $this->Cell(0, 10, 'Página '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}

// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Manuel Finol');
$pdf->SetTitle('Reporte de clientes');
$pdf->SetSubject('TCPDF Tutorial');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// set auto page breaks
//$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
//$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', 'B', 18);

// add a page
$pdf->AddPage();

// set some text to print
$pdf->SetXY(20,50);
$html = '
    <div align="center">
        <h3>LISTA DE CLIENTES</h3>
    </div>
';

$pdf->writeHTML($html, true, false, true, false, '');

// ---------------------------------------------------------
//$pdf->SetXY(20,75);
$html1 = '
    <style>
        .fondoCabecera{
            background-color: #7ACFF6;
            font-size: 15px;
        }
    </style>

        <table border="1" class="fondoCabecera">
            <tr>
                <th scope="col" width="30">ID</th>
                <th scope="col">Nombres</th>
                <th scope="col">Apellidos</th>
                <th scope="col">Cédula</th>
                <th scope="col">Teléfono</th>
                <th scope="col" width="150">Correo</th>
             </tr>
        </table>
        
';

$pdf->writeHTML($html1, false, false, true, false, 'C');

// ---------------------------------------------------------

include ("../login/conex.php");
$link = conectarse();

$clientes0 = mysqli_query($link, "SELECT * FROM clientes ORDER BY apellidos asc");
while ($fila = mysqli_fetch_array($clientes0)) { 
    $idCliente = $fila['id'];
    $nombres = $fila['nombres'];
    $apellidos = $fila['apellidos'];
    $cedula = $fila['cedula'];
    $telefono = $fila['telefono'];
    $correo = $fila['correo'];  

$html2 = '
    <style>
        .fondoCabecera{
            font-size: 12px;
        }
    </style>

    <table border="1" class="fondoCabecera">
        <tr>
            <td width="30">'.$idCliente.'</td>
            <td>'.$nombres.'</td>
            <td>'.$apellidos.'</td>
            <td>'.$cedula.'</td>
            <td>'.$telefono.'</td>
            <td width="150">'.$correo.'</td>
        </tr>
    </table>  
';

$pdf->writeHTML($html2, false, false, true, false, 'C');
$pdf->SetPrintHeader(false);

}


// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('Listas de clientes', 'I');

//============================================================+
// END OF FILE
//============================================================+
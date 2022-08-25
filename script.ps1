<#
.SYNOPSIS
    Sample silent pdf print 
.EXAMPLE
    pwsh.exe script.ps1 -PrinterName "PrinterName" -FileName "c:\tmp\example.pdf"
#>

using assembly .\PdfiumPrinter.dll

param (
	[string]$PrinterName
    [string]$FileName
)

$PdfPrinter = [PdfiumPrinter.PdfPrinter]::New($PrinterName)
$PdfPrinter.Print($FileName)



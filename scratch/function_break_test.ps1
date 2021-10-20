<# 
This is a simple test to figure out the best way to throw errors in a function.
    2021-10-19 Tuesday 22:09:22 PM - File Created

#>

function Say-Hi {
    param (
        $Foo
    )

    if ($Foo -eq $null) {
        Write-Error "No Variable Entered."
        return
    }

    Write-Host "Hi! $Foo" -ForegroundColor Green
}

Say-Hi

Say-Hi -Foo "Bar"

<# Okay now I know what to do. I will use Write-Error and return for in function errors. #>
Function Get-PCModulus 
{
    <# 
        .Synopsis
        Returns the modulus of a dividend and divisor.

        .Description
        Returns the modulus of a dividend and divisor.

        .Parameter Dividend
        The dividend to use.

        .Parameter Divisor
        The divisor to use.

        .Example
        Get-PCModulus -Dividend 5 -Divisor 2
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory = $True, Position=0, ValueFromPipeline=$True)]
        [Int] $Dividend,
        [Parameter(Mandatory = $True, Position=1, ValueFromPipeline=$True)]
        [Int] $Divisor
    )
    Process
    {
        $Modulus = ($Dividend % $Divisor + $Divisor) % $Divisor
    }
    End
    {
        #Returns the Modulus of the dividend and divisor
        Return $Modulus 
    }
}
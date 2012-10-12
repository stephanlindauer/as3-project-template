package de.punini.stephanlindauer.as3utilities.math
{
	public function floor( value : Number ) : Number
	{
		return value == ( value >> 0 ) ? value : ( value >> 0 ) + ( value >> 31 );
	}
}
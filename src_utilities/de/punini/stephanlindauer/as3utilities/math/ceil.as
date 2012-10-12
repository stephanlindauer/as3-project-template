package de.punini.stephanlindauer.as3utilities.math
{
	public function ceil( value : Number ) : Number
	{
		return value == ( value >> 0 ) ? value : ( value >> 0 ) + ( value >= 0 ? 1 : 0 );
	}
}
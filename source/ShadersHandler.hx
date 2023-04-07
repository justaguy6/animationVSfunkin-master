package;

import openfl.filters.ShaderFilter;

class ShadersHandler
{
	public static var chromaticAberration:ShaderFilter = new ShaderFilter(new ChromaticAberration());
	public static var chromeoffsetthing = 0.0;

	public static function setChrome(chromeOffset:Float):Void
	{
		chromeoffsetthing = chromeOffset;
		chromaticAberration.shader.rOffset.value = [chromeOffset];
		chromaticAberration.shader.gOffset.value = [0.0];
		chromaticAberration.shader.bOffset.value = [chromeOffset * -1];
	}
}

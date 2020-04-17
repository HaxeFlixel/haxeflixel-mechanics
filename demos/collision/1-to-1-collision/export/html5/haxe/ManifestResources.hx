package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy19:assets%2Fsprite.pngy4:sizei1165y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y18:assets%2Ftiles.pngR2i1243R3R4R5R7R6tgoR0y16:assets%2Fmap.csvR2i337R3y4:TEXTR5R8R6tgoR0y25:assets%2Fbig-room-map.csvR2i2400R3R9R5R10R6tgoR0y19:assets%2Fbigbox.pngR2i1122R3R4R5R11R6tgoR0y21:assets%2Fplatform.csvR2i600R3R9R5R12R6tgoR0y18:assets%2Farrow.pngR2i1192R3R4R5R13R6tgoR0y22:assets%2Fback-tile.pngR2i957R3R4R5R14R6tgoR2i10192R3y5:MUSICR5y26:assets%2Fjust-a-breath.mp3y9:pathGroupaR16hR6tgoR0y24:assets%2Fanim-sprite.pngR2i3255R3R4R5R18R6tgoR0y22:assets%2Ftiny-font.pngR2i2746R3R4R5R19R6tgoR0y21:assets%2Froom-map.csvR2i599R3R9R5R20R6tgoR2i39706R3R15R5y28:flixel%2Fsounds%2Fflixel.mp3R17aR21y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i2114R3R15R5y26:flixel%2Fsounds%2Fbeep.mp3R17aR23y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i5794R3y5:SOUNDR5R24R17aR23R24hgoR2i33629R3R25R5R22R17aR21R22hgoR2i15744R3y4:FONTy9:classNamey35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R26R27y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R4R5R32R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R4R5R33R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_map_csv extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_big_room_map_csv extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_bigbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_platform_csv extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_back_tile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_just_a_breath_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_anim_sprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiny_font_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_room_map_csv extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("../../demo-assets/sprite.png") @:noCompletion #if display private #end class __ASSET__assets_sprite_png extends lime.graphics.Image {}
@:keep @:image("../../demo-assets/tiles.png") @:noCompletion #if display private #end class __ASSET__assets_tiles_png extends lime.graphics.Image {}
@:keep @:file("../../demo-assets/map.csv") @:noCompletion #if display private #end class __ASSET__assets_map_csv extends haxe.io.Bytes {}
@:keep @:file("../../demo-assets/big-room-map.csv") @:noCompletion #if display private #end class __ASSET__assets_big_room_map_csv extends haxe.io.Bytes {}
@:keep @:image("../../demo-assets/bigbox.png") @:noCompletion #if display private #end class __ASSET__assets_bigbox_png extends lime.graphics.Image {}
@:keep @:file("../../demo-assets/platform.csv") @:noCompletion #if display private #end class __ASSET__assets_platform_csv extends haxe.io.Bytes {}
@:keep @:image("../../demo-assets/arrow.png") @:noCompletion #if display private #end class __ASSET__assets_arrow_png extends lime.graphics.Image {}
@:keep @:image("../../demo-assets/back-tile.png") @:noCompletion #if display private #end class __ASSET__assets_back_tile_png extends lime.graphics.Image {}
@:keep @:file("../../demo-assets/just-a-breath.mp3") @:noCompletion #if display private #end class __ASSET__assets_just_a_breath_mp3 extends haxe.io.Bytes {}
@:keep @:image("../../demo-assets/anim-sprite.png") @:noCompletion #if display private #end class __ASSET__assets_anim_sprite_png extends lime.graphics.Image {}
@:keep @:image("../../demo-assets/tiny-font.png") @:noCompletion #if display private #end class __ASSET__assets_tiny_font_png extends lime.graphics.Image {}
@:keep @:file("../../demo-assets/room-map.csv") @:noCompletion #if display private #end class __ASSET__assets_room_map_csv extends haxe.io.Bytes {}
@:keep @:file("/home/runner/haxe/haxelib/flixel/git/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("/home/runner/haxe/haxelib/flixel/git/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("/home/runner/haxe/haxelib/flixel/git/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("/home/runner/haxe/haxelib/flixel/git/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("/home/runner/haxe/haxelib/flixel/git/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("/home/runner/haxe/haxelib/flixel/git/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end

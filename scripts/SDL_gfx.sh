test_deps_install SDL
download_and_extract http://sourceforge.net/projects/sdlgfx/files/SDL_gfx-2.0.23.tar.gz SDL_gfx-2.0.23
apply_patch SDL_gfx-2.0.23-PSP
PNG_CFLAGS="-I$PSPDEV/psp/include" PNG_LIBS="-L$PSPDEV/psp/lib -lpng -lz" AR=psp-ar run_autogen_build --with-sdl-prefix=$(psp-config --psp-prefix) --disable-mmx --disable-shared


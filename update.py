try:
    import concurrent.futures as futures
except ImportError:
    try:
        import futures
    except ImportError:
        futures = None

import zipfile
import shutil
import tempfile
import requests

from os import path

# --- Globals ----------------------------------------------
PLUGINS = """
ack.vim https://github.com/mileszs/ack.vim
ale https://github.com/w0rp/ale
auto-pairs https://github.com/jiangmiao/auto-pairs
bufexplorer https://github.com/jlanzarotta/bufexplorer
coc.nvim https://github.com/neoclide/coc.nvim.git
context.vim https://github.com/wellle/context.vim.git
fzf.vim https://github.com/junegunn/fzf.vim.git
goyo.vim https://github.com/junegunn/goyo.vim
gruvbox https://github.com/morhetz/gruvbox
lightline-ale https://github.com/maximbaz/lightline-ale
lightline.vim https://github.com/itchyny/lightline.vim
mayansmoke https://github.com/vim-scripts/mayansmoke
nerdtree https://github.com/scrooloose/nerdtree
nginx.vim https://github.com/chr4/nginx.vim
open_file_under_cursor.vim https://github.com/amix/open_file_under_cursor.vim
papercolor-theme https://github.com/NLKNguyen/papercolor-theme.git
rainbow https://github.com/luochen1990/rainbow.git
rust.vim https://github.com/rust-lang/rust.vim
tlib https://github.com/vim-scripts/tlib
typescript-vim https://github.com/leafgarland/typescript-vim
vim-abolish https://github.com/tpope/tpope-vim-abolish
vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils
vim-bundle-mako https://github.com/sophacles/vim-bundle-mako
vim-coffee-script https://github.com/kchmck/vim-coffee-script
vim-commentary https://github.com/tpope/vim-commentary
vim-expand-region https://github.com/terryma/vim-expand-region
vim-flake8 https://github.com/nvie/vim-flake8
vim-fugitive https://github.com/tpope/vim-fugitive
vim-gist https://github.com/mattn/vim-gist
vim-gitgutter https://github.com/airblade/vim-gitgutter
vim-go https://github.com/fatih/vim-go
vim-hug-neovim-rpc https://github.com/roxma/vim-hug-neovim-rpc.git
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-javascript https://github.com/pangloss/vim-javascript
vim-less https://github.com/groenewege/vim-less
vim-markdown https://github.com/plasticboy/vim-markdown
vim-orgmode https://github.com/jceb/vim-orgmode
vim-pug https://github.com/digitaltoad/vim-pug
vim-python-pep8-indent https://github.com/Vimjas/vim-python-pep8-indent
vim-repeat https://github.com/tpope/vim-repeat
vim-ruby https://github.com/vim-ruby/vim-ruby
vim-snipmate https://github.com/garbas/vim-snipmate
vim-snippets https://github.com/honza/vim-snippets
vim-speeddating https://github.com/tpope/vim-speeddating
vim-surround https://github.com/tpope/vim-surround
vim-thrift https://github.com/solarnz/thrift.vim.git
vim-toml https://github.com/cespare/vim-toml.git
vim-visual-multi https://github.com/mg979/vim-visual-multi.git
vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack
vim-zenroom2 https://github.com/amix/vim-zenroom2
""".strip()


GITHUB_ZIP = "%s/archive/master.zip"

SOURCE_DIR = path.join(path.dirname(__file__), "sources_non_forked")


def download_extract_replace(plugin_name, zip_path, temp_dir, source_dir):
    temp_zip_path = path.join(temp_dir, plugin_name)

    # Download and extract file in temp dir
    req = requests.get(zip_path)
    open(temp_zip_path, "wb").write(req.content)

    zip_f = zipfile.ZipFile(temp_zip_path)
    zip_f.extractall(temp_dir)

    plugin_temp_path = path.join(
        temp_dir, path.join(temp_dir, "%s-master" % plugin_name)
    )

    # Remove the current plugin and replace it with the extracted
    plugin_dest_path = path.join(source_dir, plugin_name)

    try:
        shutil.rmtree(plugin_dest_path)
    except OSError:
        pass

    shutil.move(plugin_temp_path, plugin_dest_path)
    print("Updated {0}".format(plugin_name))


def update(plugin):
    name, github_url = plugin.split(" ")
    zip_path = GITHUB_ZIP % github_url
    download_extract_replace(name, zip_path, temp_directory, SOURCE_DIR)


if __name__ == "__main__":
    temp_directory = tempfile.mkdtemp()

    try:
        if futures:
            with futures.ThreadPoolExecutor(16) as executor:
                executor.map(update, PLUGINS.splitlines())
        else:
            [update(x) for x in PLUGINS.splitlines()]
    finally:
        shutil.rmtree(temp_directory)

brew:
	brew install tree-sitter luajit neovim

pip:
	python3 -m pip install --user -U -r requirements.txt

packer:
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

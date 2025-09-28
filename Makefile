
update: 
	sudo nix flake update
	
nixos:
	sudo nixos-rebuild switch --flake . --impure

gc: 
	# run garbage collection
	nix-collect-garbage --delete-older-than 5d

fmt:
	# format the nix files in this repo
	nix fmt ./

protoc: 
	rm -rf gen/go/discord_bot_v1
	mkdir -p gen/go/discord_bot_v1
	
	protoc \
	-I proto/discord_bot_v1 \
	--go_out=./gen/go/discord_bot_v1 \
	--go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/discord_bot_v1 \
	--go-grpc_opt=paths=source_relative \
	proto/discord_bot_v1/discord_bot.proto

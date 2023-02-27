// ignore_for_file: prefer_collection_literals, deprecated_member_use, unnecessary_new, prefer_void_to_null, unused_local_variable, no_leading_underscores_for_local_identifiers, unnecessary_this

class OpenseaModel {

	List<Assets>? assets;

	OpenseaModel({required this.assets});

	OpenseaModel.fromJson(Map<String, dynamic> json) {
    assets = List.from(json['assets']).map((e) => Assets.fromJson(e)).toList();
	}

	Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
		_data['assets'] = assets!.map((e) => e.toJson()).toList();
		return _data;
	}
}

class Assets {
	late final String imageUrl;
	late final String name;
	late final Null description;
	late final String permalink;

	Assets({required this.imageUrl, required this.name, this.description, required this.permalink});

	Assets.fromJson(Map<String, dynamic> json) {
		imageUrl = json['image_url'];
    name = json['name'];
		description = null;
		permalink = json['permalink'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['image_url'] = this.imageUrl;
		data['name'] = this.name;
		data['description'] = this.description;
		return data;
	}
}

// class AssetContract {
// 	String address;
// 	String assetContractType;
// 	String createdDate;
// 	String name;
// 	String nftVersion;
// 	Null openseaVersion;
// 	Null owner;
// 	String schemaName;
// 	String symbol;
// 	Null totalSupply;
// 	String description;
// 	String externalLink;
// 	String imageUrl;
// 	bool defaultToFiat;
// 	int devBuyerFeeBasisPoints;
// 	int devSellerFeeBasisPoints;
// 	bool onlyProxiedTransfers;
// 	int openseaBuyerFeeBasisPoints;
// 	int openseaSellerFeeBasisPoints;
// 	int buyerFeeBasisPoints;
// 	int sellerFeeBasisPoints;
// 	Null payoutAddress;

// 	AssetContract({this.address, this.assetContractType, this.createdDate, this.name, this.nftVersion, this.openseaVersion, this.owner, this.schemaName, this.symbol, this.totalSupply, this.description, this.externalLink, this.imageUrl, this.defaultToFiat, this.devBuyerFeeBasisPoints, this.devSellerFeeBasisPoints, this.onlyProxiedTransfers, this.openseaBuyerFeeBasisPoints, this.openseaSellerFeeBasisPoints, this.buyerFeeBasisPoints, this.sellerFeeBasisPoints, this.payoutAddress});

// 	AssetContract.fromJson(Map<String, dynamic> json) {
// 		address = json['address'];
// 		assetContractType = json['asset_contract_type'];
// 		createdDate = json['created_date'];
// 		name = json['name'];
// 		nftVersion = json['nft_version'];
// 		openseaVersion = json['opensea_version'];
// 		owner = json['owner'];
// 		schemaName = json['schema_name'];
// 		symbol = json['symbol'];
// 		totalSupply = json['total_supply'];
// 		description = json['description'];
// 		externalLink = json['external_link'];
// 		imageUrl = json['image_url'];
// 		defaultToFiat = json['default_to_fiat'];
// 		devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'];
// 		devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'];
// 		onlyProxiedTransfers = json['only_proxied_transfers'];
// 		openseaBuyerFeeBasisPoints = json['opensea_buyer_fee_basis_points'];
// 		openseaSellerFeeBasisPoints = json['opensea_seller_fee_basis_points'];
// 		buyerFeeBasisPoints = json['buyer_fee_basis_points'];
// 		sellerFeeBasisPoints = json['seller_fee_basis_points'];
// 		payoutAddress = json['payout_address'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['address'] = this.address;
// 		data['asset_contract_type'] = this.assetContractType;
// 		data['created_date'] = this.createdDate;
// 		data['name'] = this.name;
// 		data['nft_version'] = this.nftVersion;
// 		data['opensea_version'] = this.openseaVersion;
// 		data['owner'] = this.owner;
// 		data['schema_name'] = this.schemaName;
// 		data['symbol'] = this.symbol;
// 		data['total_supply'] = this.totalSupply;
// 		data['description'] = this.description;
// 		data['external_link'] = this.externalLink;
// 		data['image_url'] = this.imageUrl;
// 		data['default_to_fiat'] = this.defaultToFiat;
// 		data['dev_buyer_fee_basis_points'] = this.devBuyerFeeBasisPoints;
// 		data['dev_seller_fee_basis_points'] = this.devSellerFeeBasisPoints;
// 		data['only_proxied_transfers'] = this.onlyProxiedTransfers;
// 		data['opensea_buyer_fee_basis_points'] = this.openseaBuyerFeeBasisPoints;
// 		data['opensea_seller_fee_basis_points'] = this.openseaSellerFeeBasisPoints;
// 		data['buyer_fee_basis_points'] = this.buyerFeeBasisPoints;
// 		data['seller_fee_basis_points'] = this.sellerFeeBasisPoints;
// 		data['payout_address'] = this.payoutAddress;
// 		return data;
// 	}
// }

// class Collection {
// 	String bannerImageUrl;
// 	Null chatUrl;
// 	String createdDate;
// 	bool defaultToFiat;
// 	String description;
// 	String devBuyerFeeBasisPoints;
// 	String devSellerFeeBasisPoints;
// 	String discordUrl;
// 	DisplayData displayData;
// 	String externalUrl;
// 	bool featured;
// 	String featuredImageUrl;
// 	bool hidden;
// 	String safelistRequestStatus;
// 	String imageUrl;
// 	bool isSubjectToWhitelist;
// 	String largeImageUrl;
// 	Null mediumUsername;
// 	String name;
// 	bool onlyProxiedTransfers;
// 	String openseaBuyerFeeBasisPoints;
// 	String openseaSellerFeeBasisPoints;
// 	Null payoutAddress;
// 	bool requireEmail;
// 	Null shortDescription;
// 	String slug;
// 	Null telegramUrl;
// 	String twitterUsername;
// 	Null instagramUsername;
// 	Null wikiUrl;
// 	bool isNsfw;
// 	Fees fees;
// 	bool isRarityEnabled;
// 	bool isCreatorFeesEnforced;

// 	Collection({this.bannerImageUrl, this.chatUrl, this.createdDate, this.defaultToFiat, this.description, this.devBuyerFeeBasisPoints, this.devSellerFeeBasisPoints, this.discordUrl, this.displayData, this.externalUrl, this.featured, this.featuredImageUrl, this.hidden, this.safelistRequestStatus, this.imageUrl, this.isSubjectToWhitelist, this.largeImageUrl, this.mediumUsername, this.name, this.onlyProxiedTransfers, this.openseaBuyerFeeBasisPoints, this.openseaSellerFeeBasisPoints, this.payoutAddress, this.requireEmail, this.shortDescription, this.slug, this.telegramUrl, this.twitterUsername, this.instagramUsername, this.wikiUrl, this.isNsfw, this.fees, this.isRarityEnabled, this.isCreatorFeesEnforced});

// 	Collection.fromJson(Map<String, dynamic> json) {
// 		bannerImageUrl = json['banner_image_url'];
// 		chatUrl = json['chat_url'];
// 		createdDate = json['created_date'];
// 		defaultToFiat = json['default_to_fiat'];
// 		description = json['description'];
// 		devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'];
// 		devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'];
// 		discordUrl = json['discord_url'];
// 		displayData = json['display_data'] != null ? new DisplayData.fromJson(json['display_data']) : null;
// 		externalUrl = json['external_url'];
// 		featured = json['featured'];
// 		featuredImageUrl = json['featured_image_url'];
// 		hidden = json['hidden'];
// 		safelistRequestStatus = json['safelist_request_status'];
// 		imageUrl = json['image_url'];
// 		isSubjectToWhitelist = json['is_subject_to_whitelist'];
// 		largeImageUrl = json['large_image_url'];
// 		mediumUsername = json['medium_username'];
// 		name = json['name'];
// 		onlyProxiedTransfers = json['only_proxied_transfers'];
// 		openseaBuyerFeeBasisPoints = json['opensea_buyer_fee_basis_points'];
// 		openseaSellerFeeBasisPoints = json['opensea_seller_fee_basis_points'];
// 		payoutAddress = json['payout_address'];
// 		requireEmail = json['require_email'];
// 		shortDescription = json['short_description'];
// 		slug = json['slug'];
// 		telegramUrl = json['telegram_url'];
// 		twitterUsername = json['twitter_username'];
// 		instagramUsername = json['instagram_username'];
// 		wikiUrl = json['wiki_url'];
// 		isNsfw = json['is_nsfw'];
// 		fees = json['fees'] != null ? new Fees.fromJson(json['fees']) : null;
// 		isRarityEnabled = json['is_rarity_enabled'];
// 		isCreatorFeesEnforced = json['is_creator_fees_enforced'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['banner_image_url'] = this.bannerImageUrl;
// 		data['chat_url'] = this.chatUrl;
// 		data['created_date'] = this.createdDate;
// 		data['default_to_fiat'] = this.defaultToFiat;
// 		data['description'] = this.description;
// 		data['dev_buyer_fee_basis_points'] = this.devBuyerFeeBasisPoints;
// 		data['dev_seller_fee_basis_points'] = this.devSellerFeeBasisPoints;
// 		data['discord_url'] = this.discordUrl;
// 		if (this.displayData != null) {
//       data['display_data'] = this.displayData.toJson();
//     }
// 		data['external_url'] = this.externalUrl;
// 		data['featured'] = this.featured;
// 		data['featured_image_url'] = this.featuredImageUrl;
// 		data['hidden'] = this.hidden;
// 		data['safelist_request_status'] = this.safelistRequestStatus;
// 		data['image_url'] = this.imageUrl;
// 		data['is_subject_to_whitelist'] = this.isSubjectToWhitelist;
// 		data['large_image_url'] = this.largeImageUrl;
// 		data['medium_username'] = this.mediumUsername;
// 		data['name'] = this.name;
// 		data['only_proxied_transfers'] = this.onlyProxiedTransfers;
// 		data['opensea_buyer_fee_basis_points'] = this.openseaBuyerFeeBasisPoints;
// 		data['opensea_seller_fee_basis_points'] = this.openseaSellerFeeBasisPoints;
// 		data['payout_address'] = this.payoutAddress;
// 		data['require_email'] = this.requireEmail;
// 		data['short_description'] = this.shortDescription;
// 		data['slug'] = this.slug;
// 		data['telegram_url'] = this.telegramUrl;
// 		data['twitter_username'] = this.twitterUsername;
// 		data['instagram_username'] = this.instagramUsername;
// 		data['wiki_url'] = this.wikiUrl;
// 		data['is_nsfw'] = this.isNsfw;
// 		if (this.fees != null) {
//       data['fees'] = this.fees.toJson();
//     }
// 		data['is_rarity_enabled'] = this.isRarityEnabled;
// 		data['is_creator_fees_enforced'] = this.isCreatorFeesEnforced;
// 		return data;
// 	}
// }

// class DisplayData {
// 	String cardDisplayStyle;

// 	DisplayData({this.cardDisplayStyle});

// 	DisplayData.fromJson(Map<String, dynamic> json) {
// 		cardDisplayStyle = json['card_display_style'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['card_display_style'] = this.cardDisplayStyle;
// 		return data;
// 	}
// }

// class Fees {
// 	SellerFees sellerFees;
// 	OpenseaFees openseaFees;

// 	Fees({this.sellerFees, this.openseaFees});

// 	Fees.fromJson(Map<String, dynamic> json) {
// 		sellerFees = json['seller_fees'] != null ? new SellerFees.fromJson(json['seller_fees']) : null;
// 		openseaFees = json['opensea_fees'] != null ? new OpenseaFees.fromJson(json['opensea_fees']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.sellerFees != null) {
//       data['seller_fees'] = this.sellerFees.toJson();
//     }
// 		if (this.openseaFees != null) {
//       data['opensea_fees'] = this.openseaFees.toJson();
//     }
// 		return data;
// 	}
// }

// class SellerFees {


// 	SellerFees({});

// 	SellerFees.fromJson(Map<String, dynamic> json) {
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		return data;
// 	}
// }

// class OpenseaFees {
// 	int i0x0000a26b00c1f0df003000390027140000faa719;

// 	OpenseaFees({this.i0x0000a26b00c1f0df003000390027140000faa719});

// 	OpenseaFees.fromJson(Map<String, dynamic> json) {
// 		i0x0000a26b00c1f0df003000390027140000faa719 = json['0x0000a26b00c1f0df003000390027140000faa719'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['0x0000a26b00c1f0df003000390027140000faa719'] = this.i0x0000a26b00c1f0df003000390027140000faa719;
// 		return data;
// 	}
// }

// class Creator {
// 	Null user;
// 	String profileImgUrl;
// 	String address;
// 	String config;

// 	Creator({this.user, this.profileImgUrl, this.address, this.config});

// 	Creator.fromJson(Map<String, dynamic> json) {
// 		user = json['user'];
// 		profileImgUrl = json['profile_img_url'];
// 		address = json['address'];
// 		config = json['config'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['user'] = this.user;
// 		data['profile_img_url'] = this.profileImgUrl;
// 		data['address'] = this.address;
// 		data['config'] = this.config;
// 		return data;
// 	}
// }

// class Traits {
// 	String traitType;
// 	String value;
// 	Null displayType;
// 	Null maxValue;
// 	int traitCount;
// 	Null order;

// 	Traits({this.traitType, this.value, this.displayType, this.maxValue, this.traitCount, this.order});

// 	Traits.fromJson(Map<String, dynamic> json) {
// 		traitType = json['trait_type'];
// 		value = json['value'];
// 		displayType = json['display_type'];
// 		maxValue = json['max_value'];
// 		traitCount = json['trait_count'];
// 		order = json['order'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['trait_type'] = this.traitType;
// 		data['value'] = this.value;
// 		data['display_type'] = this.displayType;
// 		data['max_value'] = this.maxValue;
// 		data['trait_count'] = this.traitCount;
// 		data['order'] = this.order;
// 		return data;
// 	}
// }

// class LastSale {
// 	Asset asset;
// 	Null assetBundle;
// 	String eventType;
// 	String eventTimestamp;
// 	Null auctionType;
// 	String totalPrice;
// 	PaymentToken paymentToken;
// 	Transaction transaction;
// 	String createdDate;
// 	String quantity;

// 	LastSale({this.asset, this.assetBundle, this.eventType, this.eventTimestamp, this.auctionType, this.totalPrice, this.paymentToken, this.transaction, this.createdDate, this.quantity});

// 	LastSale.fromJson(Map<String, dynamic> json) {
// 		asset = json['asset'] != null ? new Asset.fromJson(json['asset']) : null;
// 		assetBundle = json['asset_bundle'];
// 		eventType = json['event_type'];
// 		eventTimestamp = json['event_timestamp'];
// 		auctionType = json['auction_type'];
// 		totalPrice = json['total_price'];
// 		paymentToken = json['payment_token'] != null ? new PaymentToken.fromJson(json['payment_token']) : null;
// 		transaction = json['transaction'] != null ? new Transaction.fromJson(json['transaction']) : null;
// 		createdDate = json['created_date'];
// 		quantity = json['quantity'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.asset != null) {
//       data['asset'] = this.asset.toJson();
//     }
// 		data['asset_bundle'] = this.assetBundle;
// 		data['event_type'] = this.eventType;
// 		data['event_timestamp'] = this.eventTimestamp;
// 		data['auction_type'] = this.auctionType;
// 		data['total_price'] = this.totalPrice;
// 		if (this.paymentToken != null) {
//       data['payment_token'] = this.paymentToken.toJson();
//     }
// 		if (this.transaction != null) {
//       data['transaction'] = this.transaction.toJson();
//     }
// 		data['created_date'] = this.createdDate;
// 		data['quantity'] = this.quantity;
// 		return data;
// 	}
// }

// class Asset {
// 	String tokenId;
// 	Null decimals;

// 	Asset({this.tokenId, this.decimals});

// 	Asset.fromJson(Map<String, dynamic> json) {
// 		tokenId = json['token_id'];
// 		decimals = json['decimals'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['token_id'] = this.tokenId;
// 		data['decimals'] = this.decimals;
// 		return data;
// 	}
// }

// class PaymentToken {
// 	String symbol;
// 	String address;
// 	String imageUrl;
// 	String name;
// 	int decimals;
// 	String ethPrice;
// 	String usdPrice;

// 	PaymentToken({this.symbol, this.address, this.imageUrl, this.name, this.decimals, this.ethPrice, this.usdPrice});

// 	PaymentToken.fromJson(Map<String, dynamic> json) {
// 		symbol = json['symbol'];
// 		address = json['address'];
// 		imageUrl = json['image_url'];
// 		name = json['name'];
// 		decimals = json['decimals'];
// 		ethPrice = json['eth_price'];
// 		usdPrice = json['usd_price'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['symbol'] = this.symbol;
// 		data['address'] = this.address;
// 		data['image_url'] = this.imageUrl;
// 		data['name'] = this.name;
// 		data['decimals'] = this.decimals;
// 		data['eth_price'] = this.ethPrice;
// 		data['usd_price'] = this.usdPrice;
// 		return data;
// 	}
// }

// class Transaction {
// 	String blockHash;
// 	String blockNumber;
// 	FromAccount fromAccount;
// 	int id;
// 	String timestamp;
// 	Creator toAccount;
// 	String transactionHash;
// 	String transactionIndex;

// 	Transaction({this.blockHash, this.blockNumber, this.fromAccount, this.id, this.timestamp, this.toAccount, this.transactionHash, this.transactionIndex});

// 	Transaction.fromJson(Map<String, dynamic> json) {
// 		blockHash = json['block_hash'];
// 		blockNumber = json['block_number'];
// 		fromAccount = json['from_account'] != null ? new FromAccount.fromJson(json['from_account']) : null;
// 		id = json['id'];
// 		timestamp = json['timestamp'];
// 		toAccount = json['to_account'] != null ? new Creator.fromJson(json['to_account']) : null;
// 		transactionHash = json['transaction_hash'];
// 		transactionIndex = json['transaction_index'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['block_hash'] = this.blockHash;
// 		data['block_number'] = this.blockNumber;
// 		if (this.fromAccount != null) {
//       data['from_account'] = this.fromAccount.toJson();
//     }
// 		data['id'] = this.id;
// 		data['timestamp'] = this.timestamp;
// 		if (this.toAccount != null) {
//       data['to_account'] = this.toAccount.toJson();
//     }
// 		data['transaction_hash'] = this.transactionHash;
// 		data['transaction_index'] = this.transactionIndex;
// 		return data;
// 	}
// }

// class FromAccount {
// 	User user;
// 	String profileImgUrl;
// 	String address;
// 	String config;

// 	FromAccount({this.user, this.profileImgUrl, this.address, this.config});

// 	FromAccount.fromJson(Map<String, dynamic> json) {
// 		user = json['user'] != null ? new User.fromJson(json['user']) : null;
// 		profileImgUrl = json['profile_img_url'];
// 		address = json['address'];
// 		config = json['config'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.user != null) {
//       data['user'] = this.user.toJson();
//     }
// 		data['profile_img_url'] = this.profileImgUrl;
// 		data['address'] = this.address;
// 		data['config'] = this.config;
// 		return data;
// 	}
// }

// class User {
// 	String username;

// 	User({this.username});

// 	User.fromJson(Map<String, dynamic> json) {
// 		username = json['username'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['username'] = this.username;
// 		return data;
// 	}
// }

// class Transaction {
// 	String blockHash;
// 	String blockNumber;
// 	FromAccount fromAccount;
// 	int id;
// 	String timestamp;
// 	Creator toAccount;
// 	String transactionHash;
// 	String transactionIndex;

// 	Transaction({this.blockHash, this.blockNumber, this.fromAccount, this.id, this.timestamp, this.toAccount, this.transactionHash, this.transactionIndex});

// 	Transaction.fromJson(Map<String, dynamic> json) {
// 		blockHash = json['block_hash'];
// 		blockNumber = json['block_number'];
// 		fromAccount = json['from_account'] != null ? new FromAccount.fromJson(json['from_account']) : null;
// 		id = json['id'];
// 		timestamp = json['timestamp'];
// 		toAccount = json['to_account'] != null ? new Creator.fromJson(json['to_account']) : null;
// 		transactionHash = json['transaction_hash'];
// 		transactionIndex = json['transaction_index'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['block_hash'] = this.blockHash;
// 		data['block_number'] = this.blockNumber;
// 		if (this.fromAccount != null) {
//       data['from_account'] = this.fromAccount.toJson();
//     }
// 		data['id'] = this.id;
// 		data['timestamp'] = this.timestamp;
// 		if (this.toAccount != null) {
//       data['to_account'] = this.toAccount.toJson();
//     }
// 		data['transaction_hash'] = this.transactionHash;
// 		data['transaction_index'] = this.transactionIndex;
// 		return data;
// 	}
// }


FILES = Apachai.cs \
	Hasher.cs \
	JsonStringDictionary.cs \
	redis-sharp.cs \
	StaticContentModule.cs \
	OAuth.cs \
	BackingStore.cs \
	TagLibMetadata.cs \
	Json.cs \
	Twitter.cs \
	UrlShortener.cs \
	AccessLogger.cs \
	ConfigManager.cs

all: apachai.dll

apachai.dll: $(FILES)
	dmcs /pkg:taglib-sharp /r:System.Web.dll /r:ServiceStack.Redis.dll /r:/usr/local/lib/manos/Manos.dll /debug /out:apachai.dll /t:library $(FILES)

clean:
	rm -f apachai.dll apachai.dll.mdb
'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"manifest.json": "6a94d87538f2495a53ec989a2935bb6c",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"index.html": "3616b0a2eb18e169c11fb64b4c034911",
"/": "3616b0a2eb18e169c11fb64b4c034911",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "55ec2e7dc0c06b54f1d4bf764f4b06c5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.bin.json": "f2131b92c3dcbdc5e5a2b64181d49c7f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "ca4078aef97275982880a46c69d256ce",
"assets/fonts/MaterialIcons-Regular.otf": "b5889581e524fa78b18cc7919324ec73",
"assets/images/my_page_black.png": "c32f488e8dccaf087fdf7c5cf9496890",
"assets/images/sales_service.png": "91d05d3e4df117e7bfd3384ec6f8f347",
"assets/images/logo.png": "2e900435dd29441f55430be53246f503",
"assets/images/kakaologo.png": "fcc38f8d82b934856023d547191a25d9",
"assets/images/kakao.png": "c131a7373ebf8184425abc238dab0d0b",
"assets/images/map.png": "8d147e61f25070b8876c6fc190922ce2",
"assets/images/social_black.png": "faaf6128982bc8557722f0fb0828d5c3",
"assets/images/busan.jpg": "c78b84870cd1d738cafee9fe7e74c070",
"assets/images/tuti.png": "e1ade5af611384c48f18353c98b8a8a5",
"assets/images/home_black.png": "0cd3ffeb26a0680718011bf148ca0644",
"assets/images/sales_service_black.png": "b905a2ab5e6e5b2c4311514eb985a62b",
"assets/images/home.png": "0906a53b426f3a5adedf4748bbafaf97",
"assets/images/filter.png": "2a6fdf9a4ac4e0b27483a4d3b8f4eb42",
"assets/images/whatwedo.png": "1a9295bd03e77ee8a5395964e15f534a",
"assets/images/moon.jpg": "df34e24b94b9ff177d25de07df0cd208",
"assets/images/social.png": "9bbb8bcb68f97ebe6f4becb318f8fd73",
"assets/images/n.png": "9b8bbec2b446ff566ce2df35bc2d7905",
"assets/images/seoul.jpg": "b48a86d577e0e3e5ab6e94887e339223",
"assets/images/bell.png": "88e2da00eb56cee3a89a44e9381d47ee",
"assets/images/wechat.png": "9117466796f942e13b837784ae8b43d7",
"assets/images/iquainc.png": "b4eef62cfc44854a3ee170932b0285bc",
"assets/images/k2.png": "94d0a27407acef0b18008de537319f9d",
"assets/images/k.png": "92dbc9a7023befe38080df1fbbfe0828",
"assets/images/search.png": "82859f0b55bdd94a0be6eea4493063c5",
"assets/images/medal.png": "ce4b13b2a09d95afe8d28eaca512df16",
"assets/images/line.png": "4cebad146c316b5f50201fe7911690a3",
"assets/images/ourmission.png": "4f97c5c834a8cf6a8dff2451b2dd623a",
"assets/images/my_page.png": "546cd76366adb57cc1d936e1c50d7f9d",
"assets/images/instagram.png": "f6a53100795798a77f8622bbb81dc78f",
"assets/images/naver.png": "e010167225dc8c81448178373513a1c6",
"assets/images/icon.png": "b0a382f355614ad2fe73c73c0f587a00",
"assets/images/aboutus.png": "3a54359337efb5765b9a8dfe6eeaf766",
"assets/AssetManifest.json": "9e1d8346ea3a8b55f728f4ff0c819f80",
"main.dart.js": "08bff5bb31f6a5363918eac82c8886e5",
"favicon.png": "86d9f15ae29ef076bf7e137428fdbf43",
"version.json": "15c94606b947672464d75234cf670705",
"icons/Icon-512.png.png": "7b3ec5d0dd5c2a595487b539e73ed15e",
"icons/Icon-192.png.png": "d93fd6b1d81451c94567a1cbb2019e26",
"icons/Icon-maskable-512.png.png": "7b3ec5d0dd5c2a595487b539e73ed15e",
"icons/Icon-maskable-192.png.png": "d93fd6b1d81451c94567a1cbb2019e26"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "408f96087bc48aae71b935fc9064e229",
"version.json": "38afa3183fc40928575b7aa12913c645",
"splash/img/light-2x.png": "2011ee22f3929482b803b146cfb5a9af",
"splash/img/dark-4x.png": "45c33e671b60deaef9c5c73e1ef1a9df",
"splash/img/light-3x.png": "a893000db31a5feb36688aa4792d6041",
"splash/img/dark-3x.png": "a893000db31a5feb36688aa4792d6041",
"splash/img/light-4x.png": "45c33e671b60deaef9c5c73e1ef1a9df",
"splash/img/dark-2x.png": "2011ee22f3929482b803b146cfb5a9af",
"splash/img/dark-1x.png": "ee2aa0aab597aa45fb3d098a99b71af7",
"splash/img/light-1x.png": "ee2aa0aab597aa45fb3d098a99b71af7",
"index.html": "7cd44a604ba6acba6c5381abe381438d",
"/": "7cd44a604ba6acba6c5381abe381438d",
"main.dart.js": "9993682b6308de0d23e134e7bfd9a88d",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "90f6c22d063bd67a5dce843e9817c2de",
"assets/AssetManifest.json": "e7accc06f3893e94a71b3a08a3728f1a",
"assets/NOTICES": "d7b7724a6b19c12af8c5500665931dfa",
"assets/FontManifest.json": "34bff094abc8fda1b7a77a2bc02b694f",
"assets/AssetManifest.bin.json": "d4f27989d8b69871e346096024d363dc",
"assets/packages/fluent_ui/fonts/FluentIcons.ttf": "f3c4f09a37ace3246250ff7142da5cdd",
"assets/packages/fluent_ui/assets/AcrylicNoise.png": "81f27726c45346351eca125bd062e9a7",
"assets/packages/record_web/assets/js/record.fixwebmduration.js": "1f0108ea80c8951ba702ced40cf8cdce",
"assets/packages/record_web/assets/js/record.worklet.js": "356bcfeddb8a625e3e2ba43ddf1cc13e",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0c9ff78786cce5b1ec25800afe715e1b",
"assets/fonts/MaterialIcons-Regular.otf": "46268b17f3a7f452e145f81e122b75f2",
"assets/assets/splash/dark.png": "aa009f35c764baa647667b865e5f0982",
"assets/assets/splash/light.png": "aa009f35c764baa647667b865e5f0982",
"assets/assets/app_images/user.svg": "ed4ea8094d4e2c522ad19d42989eae6c",
"assets/assets/app_images/home.svg": "e7919a94e4628018dfeaf7c599d55779",
"assets/assets/app_images/smileys1.svg": "b029d4829d87ff469521f9ee376db46a",
"assets/assets/app_images/cheating-blue.svg": "2f5b6bf93bf908fc90ffc8a0fc8793fe",
"assets/assets/app_images/chevron-right.svg": "28670b624441743a98aa72960031f448",
"assets/assets/app_images/cheating-filled.svg": "be157261f4ed0c28c73666129c26fbe3",
"assets/assets/app_images/note.svg": "e53122e1d350606d65f8651f18df3683",
"assets/assets/app_images/done_check.svg": "629b81c7a486e149fa5a3a030099a386",
"assets/assets/app_images/book.svg": "70253d184982f62611dba52834d03875",
"assets/assets/app_images/camera-filled-red.svg": "aaf964da4da1d0086ad30d331416ade0",
"assets/assets/app_images/bell.svg": "9bad33d4fdc2d93430d547c4cbba92d7",
"assets/assets/app_images/cheating.svg": "079a467a7c8ea2d01b69feb566549878",
"assets/assets/app_images/chats.svg": "9c2baf2d18cb5ed93014ffdb28aa2a84",
"assets/assets/app_images/support.svg": "88b18b00d450a0bccc5b877d0fa64d11",
"assets/assets/app_images/smoking.svg": "76cd21218070a8906ba4dd3c6961b5cb",
"assets/assets/app_images/news.svg": "8dc48e0e575711f51889fd26d072dde7",
"assets/assets/app_images/example2.png": "54117a800c6402e0b1ab2f653e706651",
"assets/assets/app_images/child.svg": "b029d4829d87ff469521f9ee376db46a",
"assets/assets/app_images/students-group.svg": "dd6db2c2d3201fab86535215ba237d49",
"assets/assets/app_images/hotspot.svg": "3775ea7395c374ee212efba5e40d2307",
"assets/assets/app_images/play.svg": "3f8c374cb276cbc203b141d48def02b1",
"assets/assets/app_images/classroom.svg": "a51e2502ebd38f721e38bdafcaaaf786",
"assets/assets/app_images/coin.svg": "c3f73cb8df745457f8ed16ae7fcb3063",
"assets/assets/app_images/in_school.svg": "dabd1c6426fd4b4f7b2208d166e556d1",
"assets/assets/app_images/conflict.svg": "2100310f7645a4f7af49b9560de45492",
"assets/assets/app_images/whatsapp.svg": "ee9b2e46cd63ff7556f74a7025e5c114",
"assets/assets/app_images/document-download.svg": "88136a567e66e7627bd6c96acea95847",
"assets/assets/app_images/camera-filled-green.svg": "29a90ca490508ed8b1bed437c9d9596d",
"assets/assets/app_images/smoking-filled.svg": "b2dd5e79593eb740d9469b7e2ad9261e",
"assets/assets/app_images/conflicts.svg": "39b4083ac57d9ec3283c6b2b34c70b0e",
"assets/assets/app_images/camera-filled-yellow.svg": "4fa701cd12c8118e48da99c8afebb4b1",
"assets/assets/app_images/calendar.svg": "4dfd802e8346a9b734dfc3900c29b206",
"assets/assets/app_images/cross.svg": "97755cf7ef8dd8313eb1a4d274dc2987",
"assets/assets/app_images/done_checkmark.svg": "1bd79d9ac6cceefa726aa8a7d9b7b755",
"assets/assets/app_images/not_in_school.svg": "3090cf1f19df114970685206c4cdbdb2",
"assets/assets/app_images/person_placeholder.png": "4480b20cb77c1a0c90a29cddeee460dd",
"assets/assets/app_images/conflicts-filled.svg": "ce619cd90ba1893068ae70bc6a001725",
"assets/assets/app_images/preparing.svg": "3bae72621266317c8ac41157be1b7d23",
"assets/assets/app_images/example.png": "d3b6d84d5ff50148ed78dfaf77d839d0",
"assets/assets/icons/dev.png": "33fe298d9375e952f8470484925c6e80",
"assets/assets/icons/prod.png": "9fdc2adffdec5262f86f29e1c61002e5",
"assets/assets/icons/stage.png": "70380c7b7b157746e0af3b9d72ec94ca",
"assets/assets/fonts/Manrope-Medium.ttf": "aa9897f9fa37c84d7b9d3d05a8a6bc07",
"assets/assets/fonts/Manrope-SemiBold.ttf": "4410f0d144bea752f9bfb5f33909e0c5",
"assets/assets/fonts/app_icons.ttf": "30d5dedc6fdb5584316bc6a5794b4008",
"assets/assets/fonts/Manrope-ExtraBold.ttf": "8541582abce817ab8857c51ae0a35ca9",
"assets/assets/fonts/Manrope-Regular.ttf": "f8105661cf5923464f0db8290746d2f9",
"assets/assets/fonts/Manrope-ExtraLight.ttf": "100308b8ce2da4b67f4850e9b9252b26",
"assets/assets/fonts/Manrope-Light.ttf": "9e353f65739cc41a37bed272850cf92e",
"assets/assets/fonts/Manrope-Bold.ttf": "69258532ce99ef9abf8220e0276fff04",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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

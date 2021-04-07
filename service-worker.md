## Servie Worker
**Register Service Worker**
```javascript
// Register service worker 
if('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker
      .register('../sw_cached_pages.js')
      .then( reg => console.log("service worker registered") )
      .catch( err => console.log("service worker error", err) )
  })
}
```
**Install Event**
```javascript
self.addEventListener('install', (e)=> {
  e.waitUntil(
      caches.open(cacheName)
        .then(cache => {
            // cacheAssets is an array to be cached
            cache.addAll(cacheAssets)
        })
        .then(() => self.skipWaiting())
  )
})
```
**Activate Event**
```javascript
self.addEventListener('activate', e => {
    console.log("service worker: activated.")
    // remove unwanted caches
    e.waitUntil(
        caches.keys().then(cacheNames => {
            return Promise.all(
                cacheNames.map(cache => {
                    if (cache !== cacheName) {
                        console.log("service worker: clearing old cache")
                        return caches.delete(cache)
                    }
                })
            )
        })
    )
})
```

## Servie Worker
** Register Service Worker **
```javascript
// Register service worker 
if('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker
      .register('../sw_cached_pages.js')
      .then( reg => console.log("service worker registered", reg) )
      .catch( err => console.log("service worker error", err))
  })
}
```

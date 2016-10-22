finicky.setDefaultBrowser('com.google.Chrome')

finicky.onUrl(function (url, opts) {
  // if(opts.flags.shift == true) {

  // Medium
  if (url.match(/^https?:\/\/medium\.com/)) {
    return {
      bundleIdentifier: 'br.com.guilhermerambo.Mediunic'
    }
  }

  // Video
  if (url.match(/\w*.webm\b/) || url.match(/\w*.mp4\b/)) {
  	return {
  		bundleIdentifier: 'br.com.guilhermerambo.VLCX'
  	}
  }

  // Maps
  // if (url.match(/^https?:\/\/maps\.google\.com/) || url.match(/^https?:\/\/google\.com\/maps/)) {
  //   return {
  //     bundleIdentifier: 'com.electron.google-maps'
  //   }
  // }

// }
})

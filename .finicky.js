finicky.setDefaultBrowser('com.google.Chrome')

finicky.onUrl(function (url, opts) {

  // Medium
  if (url.match(/^https?:\/\/medium\.com/)) {
    return {
      bundleIdentifier: 'br.com.guilhermerambo.Mediunic'
    }
  }

  // A/V
  if (url.match(/\w*.webm\b/) || url.match(/\w*.mp4\b/) || url.match(/\w*.mp3\b/) ||
      url.match(/^https?:\/\/www\.youtube\.com\/watch/) ||
      url.match(/^https?:\/\/www\.youtu\.be/)) {
  	return {
      bundleIdentifier: 'com.colliderli.iina',
      url: 'iina://weblink?url=' + encodeURI(url)
  	}
  }

  // Maps
  // if (url.match(/^https?:\/\/maps\.google\.com/) || url.match(/^https?:\/\/google\.com\/maps/)) {
  //   return {
  //     bundleIdentifier: 'com.electron.google-maps'
  //   }
  // }

  // Trello
  // if (url.match(/^https?:\/\/trello\.com/)) {
  //   return {
  //     bundleIdentifier: 'com.atlassian.trello'
  //   }
  // }
})

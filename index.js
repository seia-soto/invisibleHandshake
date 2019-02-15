const electron = require('electron')
const path = require('path')
const url = require('url')

const { app, BrowserWindow } = electron

let Window

const createWindow = refer => {
  Window = new BrowserWindow({
    width: 400,
    hight: 600,

    show: false,
    resizable: false,
    fullscreen: false,
    webPreferences: {
      nodeIntegration: true
    }
  })
  Window.loadFile('interface/index.html')
  Window.setMenu(null)

  Window.once('ready-to-show', () => Window.show())
}

app.on('ready', createWindow)
app.on('window-all-closed', () => (process.platform !== 'darwin') ? app.quit() : {})

app.on('activate', () => (Window === null) ? createWindow() : {})

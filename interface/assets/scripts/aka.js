// NOTE: Node Integrations
const Buffer = require('buffer')
const child_process = require('child_process')
const jQuery = require('jquery')
const network = require('network')

const $ = jQuery
const { exec } = child_process

let updateInterfaceMTU = null

document.addEventListener('DOMContentLoaded', () => {
  // Handler when the DOM is fully loaded
  const ValueInput = document.querySelector('#ValueInput')
  const UpdateButton = document.querySelector('#UpdateButton')
  const UpdateButtonText = document.querySelector('#UpdateButtonText')
  const InterfaceIdentifer = document.querySelector('#InterfaceIdentifer')

  let defaultInterface = null

  const disableInputs = as => ValueInput.disabled = UpdateButton.disabled = as
  updateInterfaceMTU = () => {
    disableInputs(true)
    UpdateButtonText.innerHTML = '재설정 중'

    exec(`netsh interface ipv4 set subinterface "${defaultInterface}" mtu=${ValueInput.value.replace(/[^0-9\.]+/g, '') || 1500} store=persistent`, (error, stdout, stderr) => {
      alert(error || `네트워크 인터페이스(${defaultInterface})에 대한 새 설정을 적용했습니다`)

      UpdateButtonText.innerHTML = '재설정'
      disableInputs(false)
    })
  }

  network.get_active_interface((error, interface) => {
    if (error) return alert(error)

    InterfaceIdentifer.innerHTML = defaultInterface = interface.name
    disableInputs(false)
  })
})

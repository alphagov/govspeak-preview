// Using https://github.com/alphagov/signon/blob/main/spec/javascripts/modules/accessible-autocomplete-spec.js
// as a starting point

describe('visual-editor.js', function () {
  let component, module, autocompleteInput, selectInput

  beforeEach(async function () {
    component = document.createElement('div')
    // component.setAttribute('data-module', 'accessible-autocomplete')
    component.innerHTML = `
      <div class="js-visual-editor__content" hidden>
        <p>Hello world, this is the visual editor.</p>
        <p><a href="example.com">Example link</a></p>
        <h2>This is an H2 heading</h2>
        <ol>
          <li><p>First</p></li>
          <li><p>Second</p></li>
          <li><p>Third</p></li>
        </ol>
        <ul>
          <li><p>One</p></li>
          <li><p>Two</p></li>
          <li><p>Three</p></li>
        </ul>
      </div>

      <div class="js-visual-editor__container visual-editor__container"></div>

      <div class="visual-editor__markdown-toolbar">
        <button class="js-visual-editor__markdown-button">Show markdown</button>
      </div>

      <div class="js-visual-editor__markdown-section visual-editor__markdown-section" hidden>

        <h2>Markdown version of the content in visual editor</h2>

        <textarea readonly class="js-visual-editor__textarea visual-editor__textarea"></textarea>

        <button class="js-visual-editor__copy-button">Copy markdown</button>
      </div>
    </div>
    `

    // var content = document.querySelector(".js-visual-editor__content"),
    //   container = document.querySelector(".js-visual-editor__container"),
    //   textarea = document.querySelector(".js-visual-editor__textarea"),
    //   markdownButton = document.querySelector(
    //     ".js-visual-editor__markdown-button",
    //   ),
    //   markdownSection = document.querySelector(
    //     ".js-visual-editor__markdown-section",
    //   ),
    //   copyButton = document.querySelector(".js-visual-editor__copy-button");

    // new window.GovspeakVisualEditor(content, container, textarea, { images: [] });
  })

  it('reveals the textarea when "Show markdown" is clicked', async function () {
    const textArea = component.querySelector('.js-visual-editor__markdown-section')
    const showButton = component.querySelector('.js-visual-editor__markdown-button')
    expect(textArea.hidden).toBe(true)
    showButton.click();
    expect(textArea.hidden).toBe(false)
  })

  // it('opens the menu when clicking the arrow', async function () {
    // const menuElement = component.querySelector('.autocomplete__menu')
    // const menuElementClassesBefore = Array.from(menuElement.classList)
    // expect(menuElementClassesBefore.includes('autocomplete__menu--visible')).toBe(false)
    // expect(menuElementClassesBefore.includes('autocomplete__menu--hidden')).toBe(true)

    // const arrowElement = component.querySelector('.autocomplete__dropdown-arrow-down')
    // arrowElement.dispatchEvent(new Event('click'))

    // await wait()

    // const menuElementClassesAfter = Array.from(menuElement.classList)
    // expect(menuElementClassesAfter.includes('autocomplete__menu--visible')).toBe(true)
    // expect(menuElementClassesAfter.includes('autocomplete__menu--hidden')).toBe(false)
  // })
})

const wait = async () => await new Promise(resolve => setTimeout(resolve, 100))

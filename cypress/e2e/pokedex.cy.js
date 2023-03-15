/* eslint-disable no-undef */
describe('pokedex', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3001')
  })
  it('front page can be opened', function () {
    cy.contains('ivysaur')
    cy.contains('Pokémon and Pokémon character names are trademarks of Nintendo.')
  })

  it('navigate to ivysaur Pokemon page', function () {
    cy.contains('ivysaur').click()
    cy.contains('chlorophyll')
  })
})
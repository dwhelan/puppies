class HomePage
  include PageObject

  page_url 'http://localhost:3000'

  h1 :puppy_list, text: 'Puppy List'

  indexed_property :puppies, [
    [:h4, :breed, css: 'div.puppy_list div div.details h4:nth-child(1)'],
    [:h4, :sex,   css: 'div.puppy_list div div.details h4:nth-child(2)'],
    [:h3, :name,  css: 'div.puppy_list div div.name    h3'],
  ]
end

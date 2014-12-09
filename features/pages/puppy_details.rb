class PuppyDetailsPage
  include PageObject

  params = { id: 1 }

  page_url 'http://localhost:3000/puppies/?id=<%=params[:id]%>'

  h2 :name,          css: 'div#content div h2'
  h3 :sex_and_breed, css: 'div#content div h3'

  def sex
    sex_and_breed.split.shift
  end

  def breed
    sex_and_breed.split[1..-1].join(' ')
  end
end

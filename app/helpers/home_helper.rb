module HomeHelper

  def project_cover(project)
    cover = project.pictures.where(:subtype => 'cover' ).first
    link_to( image_tag(cover.file.url), home_url(project)) if cover
  end

end

# -*- coding: utf-8 -*-
module HomeHelper

  def project_cover(project)
    cover = project.pictures.where(:subtype => 'cover' ).first
    link_to( image_tag(cover.file.url, class:"img-polaroid", "data-id" => project.id), project_url(project)) if cover
  end

  def project_customer_name(project)
    content_tag(:li, ("<strong>Cliente:</strong> " + project.customer_name).html_safe) unless project.customer_name.blank?
  end

  def project_duration(project)
    content_tag(:li, ("<strong>Duración:</strong> " + project.duration).html_safe) unless project.duration.blank?
  end

end

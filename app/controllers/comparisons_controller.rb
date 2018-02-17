class ComparisonsController < ApplicationController
  SAMPLE_TEXT =
  "<header>
    <title> Sample Title </title>
  </header>

  <navbar>
    <ul>
      <li>Sample Title 1</li>
      <li>Sample Title 2</li>
    </ul>
  </navbar>

  <footer>
    <a href='#'>First Link</a>
    <a href='#'>Second Link</a>
  </footer>"

  def compare
    @sample_text = SAMPLE_TEXT
  end

  def compare_sections
    distance = Text::Levenshtein.distance(params[:left_section], params[:right_section]).to_f
    @diff_percentage = calculate_diff(distance)
  end

  private

  def calculate_diff(distance)
    return 0 if params[:left_section].length.zero? && params[:right_section].length.zero?
    return 100 if params[:left_section].length.zero? && params[:right_section].length.positive?
    string_length = [params[:left_section].length, params[:right_section].length].max 
    distance / string_length * 100
  end
end

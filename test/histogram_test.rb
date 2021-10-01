require File.expand_path("../test_helper", __FILE__)

class HistogramTest < Test::Unit::TestCase
  def test_color_count_is_correct
    colors = 7
    histogram = Histogram.new("test/fixtures/skydiver.jpg", colors)
    assert_equal colors, histogram.colors.size
  end

  def test_transparency_is_ignored
    histogram = Histogram.new("test/fixtures/transparency.png")
    assert_equal Color::RGB.from_html('0000ff'), histogram.colors.first
  end

  def test_timeout_is_respected
    # Commented out, because I don't know how to stub test/unit without a
    # 3rd party library like mocha
    # ¯\_(ツ)_/¯
    #
    # assert_raise Colorscore::Histogram::UnhistogrammableError do
    #   histogram = Histogram.new("test/fixtures/skydiver.jpg", timeout: 2)
    # end
  end
end

class NeonSignsController < ApplicationController
  before_action :set_neon_sign, only: [:show, :destroy]

  def new
    @neon_sign = NeonSign.new
  end

  def create
    @neon_sign = NeonSign.new(neon_sign_params)
    if @neon_sign.save
      redirect_to neon_sign_path(@neon_sign), notice: "Neon sign created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @neon_signs = NeonSign.all
  end

  def show
  end

  def destroy
    @neon_sign.destroy
    redirect_to neon_signs_path, notice: "Neon sign deleted."
  end

  private

  def set_neon_sign
    @neon_sign = NeonSign.find(params[:id])
  end

  def neon_sign_params
    params.require(:neon_sign).permit(:text, :font, :color, :size)
  end
end


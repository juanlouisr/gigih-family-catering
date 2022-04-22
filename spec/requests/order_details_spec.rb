# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/order_details', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # OrderDetail. As you add validations to OrderDetail, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      OrderDetail.create! valid_attributes
      get order_details_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      order_detail = OrderDetail.create! valid_attributes
      get order_detail_url(order_detail)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_order_detail_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      order_detail = OrderDetail.create! valid_attributes
      get edit_order_detail_url(order_detail)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new OrderDetail' do
        expect do
          post order_details_url, params: { order_detail: valid_attributes }
        end.to change(OrderDetail, :count).by(1)
      end

      it 'redirects to the created order_detail' do
        post order_details_url, params: { order_detail: valid_attributes }
        expect(response).to redirect_to(order_detail_url(OrderDetail.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new OrderDetail' do
        expect do
          post order_details_url, params: { order_detail: invalid_attributes }
        end.to change(OrderDetail, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post order_details_url, params: { order_detail: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested order_detail' do
        order_detail = OrderDetail.create! valid_attributes
        patch order_detail_url(order_detail), params: { order_detail: new_attributes }
        order_detail.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the order_detail' do
        order_detail = OrderDetail.create! valid_attributes
        patch order_detail_url(order_detail), params: { order_detail: new_attributes }
        order_detail.reload
        expect(response).to redirect_to(order_detail_url(order_detail))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        order_detail = OrderDetail.create! valid_attributes
        patch order_detail_url(order_detail), params: { order_detail: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested order_detail' do
      order_detail = OrderDetail.create! valid_attributes
      expect do
        delete order_detail_url(order_detail)
      end.to change(OrderDetail, :count).by(-1)
    end

    it 'redirects to the order_details list' do
      order_detail = OrderDetail.create! valid_attributes
      delete order_detail_url(order_detail)
      expect(response).to redirect_to(order_details_url)
    end
  end
end

json.extract! coupon, :id, :title, :expire_date, :limitation, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
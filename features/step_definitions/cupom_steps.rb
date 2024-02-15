Dado('que iniciei a compra do item:') do |table|
    @product = table.rows_hash

    @home.open
    @home.buy(@product[:name])
end

Quando('aplico o cupom {string}') do |coupon_code|
    @checkout.set_coupon(coupon_code)
end

Então('o valor final da compra deve ser atualizado para {string}') do |final_price|
    @checkout.assert_total_price(final_price)
end

Então('deve ver a seguinte notificação {string}') do |text|
    @checkout.assert_notice(text)
end

Então('o valor final deve permanecer o mesmo') do
    @checkout.assert_total_price(@product[:total])
end
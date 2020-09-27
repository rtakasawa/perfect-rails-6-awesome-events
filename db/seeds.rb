30.times do |n|
  Event.create!(
    owner_id: 2,
    name: "イベント名#{n + 1}",
    place: "イベント開催場所#{n + 1}",
    start_at: DateTime.now + (n + 1) * 100000,
    end_at: DateTime.now + (n + 1) * 200000,
    content: "イベント本文#{n + 1}"
  )
end
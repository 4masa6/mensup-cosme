class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'スキンケア' },
    { id: 3, name: '洗顔料' },
    { id: 4, name: 'ヘアケア' },
    { id: 5, name: 'ヘアトニック' },
    { id: 6, name: 'ボディウォッシュ' },
    { id: 7, name: '制汗剤' },
    { id: 8, name: 'カミソリ' },
    { id: 9, name: 'シェービング剤' },
    { id: 10, name: 'その他' }
  ]
  end